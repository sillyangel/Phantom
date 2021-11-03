-- Save Instance
-- 0866
-- November 25, 2020



local SaveInstance = {}

SaveInstance.DecompileScripts = false

SaveInstance.IgnoreList = { CoreGui = true, CorePackages = true, Players = true, CLASS = true }
SaveInstance.SpecialClasses = { MeshPart = true, UnionOperation = true, Terrain = true }

local ipairs = ipairs
local pairs = pairs
local encodeBase64 = Krnl.base64.encode
local tInsert = table.insert

local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")

local scriptCache = {}


--[[
    Adds to the ignore list.
]]
do
    local function IgnoreChildren(parent, ...)
        local names = table.pack(...)
        for _,name in ipairs(names) do
            if (name and parent:FindFirstChild(name)) then
                SaveInstance.IgnoreList[parent:FindFirstChild(name):GetFullName()] = true
            end
        end
    end

    local Chat = game:GetService("Chat")
    IgnoreChildren(Chat, "ChatModules", "ClientChatModules", "ChatLocalization", "ChatServiceRunner", "ChatScript")

    for _,service in ipairs(game:GetChildren()) do
        if (#service:GetChildren() == 0) then
            SaveInstance.IgnoreList[service:GetFullName()] = true
        end
    end
end


--[[
    Loads the Roblox API dump.
]]
local ApiDump do
    if (getgenv().__apiDump) then
        ApiDump = getgenv().__apiDump
    else
        local version = game:HttpGetAsync("http://setup.roblox.com/versionQTStudio")
        local apiDumpJSON = game:HttpGetAsync("http://setup.roblox.com/" .. version .. "-API-Dump.json")
        ApiDump = HttpService:JSONDecode(apiDumpJSON)
        getgenv().__apiDump = ApiDump
    end
end


--[[
    Creates a list of classes with their properties.
]]
local Classes = {} do
    --[[
        Adds classes.
    ]]
    for _,class in ipairs(ApiDump.Classes) do
        local properties = {}
        for _,member in ipairs(class.Members) do
            if (member.MemberType == "Property") then
                if (not member.ValueType.CanSave and member.Tags and table.find(member.Tags, "Deprecated")) then
                    continue
                end
                properties[member.Name] = member.ValueType
                member.ValueType.Tags = member.Tags
            end
        end
        Classes[class.Name] = properties
    end
    
    --[[
        Modifies the API directly to help with saving.
    ]]
    do
        Classes.Instance.Archivable = nil
        Classes.Instance.ClassName = nil
        Classes.Instance.RobloxLocked = nil
        Classes.Instance.SourceAssetId = nil
        Classes.Instance.DataCost = nil
        
        Classes.BasePart.BrickColor = nil
        Classes.BasePart.Position = nil
        Classes.BasePart.Rotation = nil
        Classes.BaseScript.LinkedSource = nil

        Classes.EXT_ModelInPrimary = { Name = "CoordinateFrame" }
        Classes.EXT_ModelMeshCFrame = { Name = "CoordinateFrame" }

        Classes.Instance.AttributesSerialize = { Name = "BinaryString" }

        Classes.MeshPart.PhysicsData = { Name = "BinaryString" }
        Classes.MeshPart.InitialSize = { Name = "Vector3" }
    
        Classes.UnionOperation.AssetId = { Name = "Content" }
        Classes.UnionOperation.ChildData = { Name = "BinaryString" }
        Classes.UnionOperation.FormFactor = { Name = "FormFactor", Category = "Enum" }
        Classes.UnionOperation.InitialSize = { Name = "Vector3" }
        Classes.UnionOperation.MeshData = { Name = "BinaryString" }
        Classes.UnionOperation.PhysicsData = { Name = "BinaryString" }
    
        Classes.Terrain.AssetId = { Name = "Content" }
        Classes.Terrain.ChildData = { Name = "BinaryString" }
    end

    --[[
        Add properties inherited via Superclass.
    ]]
    for _,class in ipairs(ApiDump.Classes) do
        local propertiesToAdd = Classes[class.Superclass]

        if (propertiesToAdd) then
            local properties = Classes[class.Name]

            for property, valueType in pairs(propertiesToAdd) do
                properties[property] = valueType
            end
        end
    end
end


--[[
    A formatter for xml data.
]]
local Format do
    local function FmtCoordinateFrame(x, y, z, r00, r01, r02, r10, r11, r12, r20, r21, r22)
        return "\n<X>" .. x .. "</X>\n<Y>" .. y .. "</Y>\n<Z>" .. z .. "</Z>" ..
               "\n<R00>" .. r00 .. "</R00>\n<R01>" .. r01 .. "</R01>\n<R02>" .. r02 .. "</R02>" ..
               "\n<R10>" .. r10 .. "</R10>\n<R11>" .. r11 .. "</R11>\n<R12>" .. r12 .. "</R12>" ..
               "\n<R20>" .. r20 .. "</R20>\n<R21>" .. r21 .. "</R21>\n<R22>" .. r22 .. "</R22>\n"
    end
    local function FmtVector3(x, y, z)
        return "\n<X>" .. x .. "</X>\n<Y>" .. y .. "</Y>\n<Z>" .. z .. "</Z>\n"
    end
    local function FmtVector2(x, y)
        return "\n<X>" .. x .. "</X>\n<Y>" .. y .. "</Y>\n"
    end
    local function FmtColor3(r, g, b)
        return "\n<R>" .. r .. "</R>\n<G>" .. g .. "</G>\n<B>" .. b .. "</B>\n"
    end
    local function FmtUDim(s, o)
        return "\n<S>"..s.."</S>\n<O>"..o.."</O>\n"
    end
    local function FmtUDim2(xs, xo, ys, yo)
        return "\n<XS>"..xs.."</XS>\n<XO>"..xo.."</XO>\n<YS>"..ys.."</YS>\n<YO>"..yo.."</YO>\n"
    end
    local function FmtRect(xin, yin, xax, yax)
        return "\n<min>\n<X>"..xin.."</X>\n<Y>"..yin.."</Y>\n</min>\n<max>\n<X>"..xax.."</X>\n<Y>"..yax.."</Y>\n</max>\n"
    end
    local function FmtContent(url)
        return "<url>" .. url .. "</url>"
    end
    local function FmtProtectedString(str)
        return "<![CDATA[" .. str .. "]]>"
    end
    local function FmtBinaryString(str)
        return "<![CDATA[" .. str .. "]]>"
    end

    local function ValueType(typeData)
        if (typeData.Category == "Class") then
            return "Ref"
        elseif (typeData.Category == "Enum") then
            return "token"
        elseif (typeData.Name == "CFrame") then
            return "CoordinateFrame"
        else
            return typeData.Name
        end
    end

    function Format(instance, property, value, typeData, map)
        if (not value) then
            local ok, result = pcall(gethiddenproperty, instance, property)
            if (ok) then
                value = result
            else
                return
            end
        end

        local valueType = ValueType(typeData)

        if (valueType == "Ref") then
            local id = (value and map[value])
            return (id and "RBX" .. id) or "null", valueType

        elseif (valueType == "CoordinateFrame") then
            return FmtCoordinateFrame(value:GetComponents()), valueType

        elseif (valueType == "Vector3") then
            return FmtVector3(value.X, value.Y, value.Z), valueType

        elseif (valueType == "Vector2") then
            return FmtVector2(value.X, value.Y), valueType

        elseif (valueType == "Color3") then
            return FmtColor3(value.R, value.G, value.B), valueType

        elseif (valueType == "UDim") then
            return FmtUDim(value.Scale, value.Offset), valueType

        elseif (valueType == "UDim2") then
            return FmtUDim2(value.X.Scale, value.X.Offset, value.Y.Scale, value.Y.Offset), valueType

        elseif (valueType == "Rect") then
            return FmtRect(value.Min.X, value.Min.Y, value.Max.X, value.Max.Y), valueType

        elseif (valueType == "Content") then
            return FmtContent(value), valueType

        elseif (valueType == "token" or typeof(value) == "EnumItem") then
            return value.Value, "token"

        elseif (valueType == "BinaryString") then
            return FmtBinaryString(encodeBase64(value)), valueType

        elseif (valueType == "ProtectedString") then
            return FmtProtectedString(scriptCache[instance] or "-- No source"), valueType

        else
            return tostring(value), valueType
        end
    end
end


local function IsIgnored(instance)
    return (
        SaveInstance.IgnoreList[instance:GetFullName()]
        or SaveInstance.IgnoreList["CLASS" .. instance.ClassName]
    )
end


function SaveInstance:CacheScripts(obj)
    assert(typeof(obj) == "Instance", "Argument #1 'instance' must be a valid Instance")

    local jobCount = 0

    local function Decompile(instance)
        if (IsIgnored(instance)) then return end
        if (instance:IsA("LocalScript") or instance:IsA("ModuleScript")) then
            jobCount += 1
            spawn(function()
                local ok, result = pcall(decompile, instance)
                if (ok) then
                    scriptCache[instance] = result
                end
                jobCount -= 1
            end)
        end
        for _,child in ipairs(instance:GetChildren()) do
            Decompile(child)
        end
    end

    Decompile(obj)

    while (jobCount > 0) do
        RunService.Heartbeat:Wait()
    end
end


function SaveInstance:Serialize(obj)
    assert(typeof(obj) == "Instance", "Argument #1 'instance' must be a valid Instance")

    local map = {}
    local content = {}

    local mapCount = 0
    local line = 0

    local function append(str)
        line += 1
        content[line] = str
    end

    local function AppendProperty(property, instance, typeData, value)
        if (property == "Parent") then return end
        local format, valueType = Format(instance, property, value, typeData, map)
        if (format) then
            append("<" .. valueType .. " name=\"" .. property .. "\">" .. format .. "</" .. valueType .. ">")
        end
    end

    local function Serialize(instance, children)
        local className = instance.ClassName
        if (IsIgnored(instance) or className == "DataModel") then return end

        local class = Classes[className]
        if (not class) then return end

        local id = map[instance]
        if (not id) then
            mapCount += 1
            map[instance] = mapCount
            id = mapCount
        end

        append("<Item class=\"" .. className .. "\" referent=\"RBX" .. id .. "\">\n<Properties>")

        for property, typeData in pairs(class) do
            AppendProperty(property, instance, typeData)
        end

        append("</Properties>")

        for _,child in ipairs(children or instance:GetChildren()) do
            Serialize(child)
        end
        
        append("</Item>")
    end

    local function InsertFolder(name, instances)
        local folder = Instance.new("Folder")
        folder.Name = name
        mapCount += 1
        map[folder] = mapCount
        Serialize(folder, instances)
    end

    if (self.DecompileScripts) then
        self:CacheScripts(obj)
    end

    append('<roblox xmlns:xmime="http://www.w3.org/2005/05/xmlmime" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://www.roblox.com/roblox.xsd" version="4">\n<External>null</External>\n<External>nil</External>')
    
    if (obj ~= game) then
        tInsert(map, obj)
        Serialize(obj)
    else
        for _,service in ipairs(game:GetChildren()) do
            Serialize(service)
        end
    end

    InsertFolder("Nil Instances", getnilinstances())

    append("<SharedStrings>\n</SharedStrings>\n</roblox>")
    return table.concat(content)
end


function SaveInstance:Save(obj)
    local content = self:Serialize(obj)
    if (obj == game or game:GetService(obj.ClassName)) then
        writefile("Place_" .. game.Name .. "_" .. game.PlaceId .. ".rbxlx", content)
    else
        writefile("Model_" .. game.Name .. "_" .. game.PlaceId .. ".rbxmx", content)
    end
end


getgenv().saveinstance = function(obj)
    if typeof(obj) == 'table' then
        if typeof(obj.noscripts) == 'boolean' then SaveInstance.DecompileScripts = not obj.noscripts end
        obj = game
    end
    SaveInstance:Save(obj or game)
end

getgenv().SaveInstance = SaveInstance