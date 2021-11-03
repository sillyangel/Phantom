repeat wait() until game:IsLoaded()

local find, insert, remove, split, concat = table.find, table.insert, table.remove, string.split, table.concat
local CorePackages = game:GetService('CorePackages')
local CoreGui = game:GetService('CoreGui')
local Chat = game:GetService('Chat')
local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer

local PlayerScripts = LocalPlayer.PlayerScripts
local PlayerGui = LocalPlayer.PlayerGui

local cache = {}
local closures = {}

local function matches(arg0, arg1, delimiter)
    local size = 0
    local a0 = arg0:split(delimiter)
    local a1 = arg1:split(delimiter)
    for i,v in next, a1 do
        if a0[i] == a1[i] then
            size += 1
        end
    end

    return #a1 == size
end

local function isScript(v)
	if typeof(v) ~= 'Instance' or v == script or v:IsDescendantOf(CorePackages) or v:IsDescendantOf(CoreGui) then return false end
	
    local class = v.ClassName

    return (class == 'ModuleScript' or class == 'LocalScript')
end

for key, instance in next, getinstances() do
	if isScript(instance) then
		insert(cache, instance)
	end
end

game.DescendantAdded:connect(function(instance)
	if not isScript(instance) then return end
    if find(cache, instance) then return end
	wait(1)
	
    insert(cache, instance)
end)

getgenv().getrunningscripts = function()
    local running = {}
    for key, instance in next, cache do

        local success, out = pcall(function()
            local closure = getsenv(instance)
            if typeof(closure) ~= 'table' then
                return false
            end
            return true
        end)

        if success then
            insert(running, instance)
        end
    end

    return running
end

getgenv().getscripts = function()
    local scripts = {}
	for key, instance in next, cache do
		local cached = find(closures, instance) ~= nil
        if cached then
            insert(scripts, instance)
            continue;
        end
        local success, out = pcall(function()
            local closure = getscriptclosure(instance)
            if closure == nil or typeof(closure) ~= 'function' then
                return false
            end
            return true
        end)

        if success and out then
            if not cached then
                insert(closures, instance)
            end
            insert(scripts, instance)
        end
    end

    return scripts
end