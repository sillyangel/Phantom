local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local b1 = Instance.new("TextButton")
local b2 = Instance.new("TextButton")
local bfour = Instance.new("TextButton")
local b3 = Instance.new("TextButton")
local b5 = Instance.new("TextButton")
local b6 = Instance.new("TextButton")
local b8 = Instance.new("TextButton")
local b7 = Instance.new("TextButton")
local b10 = Instance.new("TextButton")
local b11 = Instance.new("TextButton")
local b12 = Instance.new("TextButton")
local b9 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Frame.BackgroundTransparency = 0.050
Frame.Position = UDim2.new(0.222294658, 0, 0.166865319, 0)
Frame.Size = UDim2.new(0, 217, 0, 297)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Frame_2.Size = UDim2.new(0, 217, 0, 24)

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 217, 0, 24)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Prison Life"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 17.000

b1.Name = "b1"
b1.Parent = Frame
b1.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
b1.Position = UDim2.new(0.0921659023, 0, 0.117845118, 0)
b1.Size = UDim2.new(0, 79, 0, 34)
b1.Font = Enum.Font.SourceSans
b1.TextColor3 = Color3.fromRGB(255, 255, 255)
b1.TextSize = 14.000
b1.Text = "Get weapons"

b2.Name = "b2"
b2.Parent = Frame
b2.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
b2.Position = UDim2.new(0.543778777, 0, 0.117845118, 0)
b2.Size = UDim2.new(0, 79, 0, 34)
b2.Font = Enum.Font.SourceSans
b2.TextColor3 = Color3.fromRGB(255, 255, 255)
b2.TextSize = 14.000
b2.Text = "Escape Prison"

bfour.Name = "bfour"
bfour.Parent = Frame
bfour.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
bfour.Position = UDim2.new(0.543778777, 0, 0.269360274, 0)
bfour.Size = UDim2.new(0, 79, 0, 34)
bfour.Font = Enum.Font.SourceSans
bfour.TextColor3 = Color3.fromRGB(255, 255, 255)
bfour.TextSize = 14.000
bfour.Text = "Bring All (Not mine)"

b3.Name = "b3"
b3.Parent = Frame
b3.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
b3.Position = UDim2.new(0.0921659023, 0, 0.269360274, 0)
b3.Size = UDim2.new(0, 79, 0, 34)
b3.Font = Enum.Font.SourceSans
b3.TextColor3 = Color3.fromRGB(255, 255, 255)
b3.TextSize = 14.000
b3.Text = "God Mode"

b5.Name = "b5"
b5.Parent = Frame
b5.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
b5.Position = UDim2.new(0.0921659023, 0, 0.42087543, 0)
b5.Size = UDim2.new(0, 79, 0, 34)
b5.Font = Enum.Font.SourceSans
b5.TextColor3 = Color3.fromRGB(255, 255, 255)
b5.TextSize = 14.000
b5.Text = "TP Bypass"

b6.Name = "b6"
b6.Parent = Frame
b6.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
b6.Position = UDim2.new(0.543778777, 0, 0.42087543, 0)
b6.Size = UDim2.new(0, 79, 0, 34)
b6.Font = Enum.Font.SourceSans
b6.TextColor3 = Color3.fromRGB(255, 255, 255)
b6.TextSize = 14.000
b6.Text =  "Admin (To TP)"

b8.Name = "b8"
b8.Parent = Frame
b8.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
b8.Position = UDim2.new(0.543778777, 0, 0.575757563, 0)
b8.Size = UDim2.new(0, 79, 0, 34)
b8.Font = Enum.Font.SourceSans
b8.TextColor3 = Color3.fromRGB(255, 255, 255)
b8.TextSize = 14.000
b8.Text = "No Arrest CD"

b7.Name = "b7"
b7.Parent = Frame
b7.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
b7.Position = UDim2.new(0.0921659023, 0, 0.575757563, 0)
b7.Size = UDim2.new(0, 79, 0, 34)
b7.Font = Enum.Font.SourceSans
b7.TextColor3 = Color3.fromRGB(255, 255, 255)
b7.TextSize = 14.000
b7.Text = "Kill All(Crim)"

b10.Name = "b10"
b10.Parent = Frame
b10.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
b10.Position = UDim2.new(0.543778777, 0, 0.727272749, 0)
b10.Size = UDim2.new(0, 79, 0, 34)
b10.Font = Enum.Font.SourceSans
b10.TextColor3 = Color3.fromRGB(255, 255, 255)
b10.TextSize = 14.000
b10.Text = "Super Punch"

b11.Name = "b11"
b11.Parent = Frame
b11.BackgroundColor3 = Color3.fromRGB(203, 132, 66)
b11.Position = UDim2.new(0.0921659023, 0, 0.882154882, 0)
b11.Size = UDim2.new(0, 79, 0, 34)
b11.Font = Enum.Font.SourceSans
b11.TextColor3 = Color3.fromRGB(255, 255, 255)
b11.TextSize = 14.000
b11.Text = "Become Inmate"

b12.Name = "b12"
b12.Parent = Frame
b12.BackgroundColor3 = Color3.fromRGB(3, 105, 172)
b12.Position = UDim2.new(0.543778777, 0, 0.882154882, 0)
b12.Size = UDim2.new(0, 79, 0, 34)
b12.Font = Enum.Font.SourceSans
b12.TextColor3 = Color3.fromRGB(255, 255, 255)
b12.TextSize = 14.000
b12.Text = "Become Guard"

b9.Name = "b9"
b9.Parent = Frame
b9.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
b9.Position = UDim2.new(0.0921658874, 0, 0.727272749, 0)
b9.Size = UDim2.new(0, 79, 0, 34)
b9.Font = Enum.Font.SourceSans
b9.TextColor3 = Color3.fromRGB(255, 255, 255)
b9.TextSize = 14.000
b9.Text = "PrisonHAX"

Frame.Draggable = true
Frame.Active = true

b1.MouseButton1Click:Connect(function()
    for i,v in pairs(Workspace.Prison_ITEMS.giver:GetChildren()) do

lol = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
print(lol)
end
end)

b2.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(465.9,98.19,2253.47)
end)

b3.MouseButton1Click:Connect(function()while wait() do 
	if game.Players.LocalPlayer.Character.Humanoid.Health < 99 then 
		local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
		local plr = game.Players.LocalPlayer.Name
		local gayevent = game:GetService("Workspace").Remote.loadchar
		gayevent:InvokeServer(plr)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastPos)
	end
end
    end)
    
bfour.MouseButton1Click:Connect(function()
    local Crim = Instance.new("Part")
   Crim.Name = "plr"
     Crim.Parent = workspace
       Crim.Anchored = true
         Crim.Archivable = true
      Crim.CFrame = CFrame.new(9e99, 9e99, 9e99)
   Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
local gui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local Bringmain = Instance.new("Frame")
local Credits = Instance.new("TextLabel")
local Bringoffmain = Instance.new("Frame")
local Bringoff = Instance.new("TextButton")

gui.Name = "gui"
gui.Parent = game.CoreGui

main.Name = "main"
main.Parent = gui
main.BackgroundColor3 = Color3.new(0, 0, 0)
main.Position = UDim2.new(0.132017255, 0, 0.617936134, 0)
main.Size = UDim2.new(0, 161, 0, 100)
main.Active = true
main.Draggable = true

Bringmain.Name = "Bringmain"
Bringmain.Parent = main
Bringmain.BackgroundColor3 = Color3.new(0, 0, 0)
Bringmain.Position = UDim2.new(0, 0, -0.100000001, 0)
Bringmain.Size = UDim2.new(0, 161, 0, 110)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local function RemoveSpaces(String)
	return String:gsub("%s+", "") or String
end

local function FindPlayer(String)
	String = RemoveSpaces(String)
	for _, _Player in pairs(Players:GetPlayers()) do
		if _Player.Name:lower():match('^'.. String:lower()) then
			return _Player
		end
	end
	return nil
end

Credits.Name = "Credits"
Credits.Parent = Bringmain
Credits.BackgroundColor3 = Color3.new(0.333333, 1, 0)
Credits.Size = UDim2.new(0, 161, 0, 25)
Credits.Font = Enum.Font.GothamBold
Credits.Text = "JAKE11PRICE"
Credits.TextColor3 = Color3.new(0, 0, 0)
Credits.TextSize = 14

Bringoffmain.Name = "Bringoffmain"
Bringoffmain.Parent = Bringmain
Bringoffmain.BackgroundColor3 = Color3.new(1, 1, 1)
Bringoffmain.Position = UDim2.new(0, 0, 0.609090924, 0)
Bringoffmain.Size = UDim2.new(0, 161, 0, 43)

Bringoff.Name = "Bringoff"
Bringoff.Parent = Bringoffmain
Bringoff.BackgroundColor3 = Color3.new(0.333333, 1, 0)
Bringoff.Position = UDim2.new(-0.00621099072, 0, 0, 0)
Bringoff.Size = UDim2.new(0, 161, 0, 43)
Bringoff.Font = Enum.Font.Highway
Bringoff.Text = "Bring all/Crim All"
Bringoff.TextColor3 = Color3.new(0, 0, 0)
Bringoff.TextSize = 14
Bringoff.MouseButton1Down:connect(function()
NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
_G.Crimall = true
local Player = game.Players.LocalPlayer
local cpos = Player.Character.HumanoidRootPart.CFrame
for i,v in pairs(game.Teams.Guards:GetPlayers()) do
if v and v.Character then
if v.Name ~= Player.Name then
if v.Name ~= "jake11price" then
    repeat
    i = i-1
	repeat
if v.Character.Humanoid.Sit == true then 
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP) 
local A_1 = 
{
	[1] = 
{
	["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(277.738678, 6.89340925, 287.773712)), 
	["Distance"] = 4.7204174995422, 
	["Cframe"] = CFrame.new(832.049377, 101.392006, 2300.97168, 0.843892097, -0.0554918349, 0.533635378, 0, 0.994636595, 0.103430569, -0.536512911, -0.0872842371, 0.839366019), 
	["Hit"] = v.Character.Head
}, 
	[2] = 
{
	["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(303.047546, 21.3568707, 260.203888)), 
	["Distance"] = 4.8114862442017, 
	["Cframe"] = CFrame.new(832.390259, 101.550629, 2300.74097, 0.738044441, -0.112958886, 0.665229917, 7.45057971e-09, 0.985887885, 0.16740793, -0.674752235, -0.123554483, 0.727628946), 
	["Hit"] = v.Character.Head
}, 
	[3] = 
{
	["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(296.800507, 7.00420141, 268.067932)), 
	["Distance"] = 4.444625377655, 
	["Cframe"] = CFrame.new(832.185486, 101.391617, 2300.70264, 0.775115669, -0.0692948848, 0.628007889, 7.45057971e-09, 0.993967533, 0.109675139, -0.631819367, -0.0850109085, 0.770439863), 
	["Hit"] = v.Character.Head
}, 
	[4] = 
{
	["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(284.930573, 11.9850616, 280.483368)), 
	["Distance"] = 4.6211166381836, 
	["Cframe"] = CFrame.new(832.10083, 101.445007, 2300.86963, 0.820150614, -0.0735745132, 0.567397356, 0, 0.991697431, 0.128593579, -0.572147667, -0.105466105, 0.81334126), 
	["Hit"] = v.Character.Head
}, 
	[5] = 
{
	["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(294.625824, 2.15741801, 270.538269)), 
	["Distance"] = 4.4639973640442, 
	["Cframe"] = CFrame.new(832.169434, 101.341301, 2300.73438, 0.784266233, -0.0537625961, 0.618090749, -3.7252903e-09, 0.99623847, 0.086654529, -0.620424569, -0.0679602176, 0.781316102), 
	["Hit"] = v.Character.Head
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
wait(0.3)
local Crim = Instance.new("Part")
   Crim.Name = "plr"
     Crim.Parent = workspace
       Crim.Anchored = true
         Crim.Archivable = true
      Crim.CFrame = CFrame.new(9e99, 9e99, 9e99)
   Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
Crim.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	Crim.Transparency = 1
	    Crim.Anchored = true
	 Crim.CanCollide = false
  lol = true				
Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
  Bruh.CanCollide = false
      Bruh.Size = Vector3.new(51.05, 24.12, 54.76)
	Bruh.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  Bruh.Transparency = 1
  game.Players.LocalPlayer.Character.Humanoid.Sit = false
wait(0.3)
local Crim = Instance.new("Part")
   Crim.Name = "plr"
     Crim.Parent = workspace
       Crim.Anchored = true
         Crim.Archivable = true
      Crim.CFrame = CFrame.new(9e99, 9e99, 9e99)
   Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
Crim.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	Crim.Transparency = 1
	    Crim.Anchored = true
	 Crim.CanCollide = false
  lol = true				
Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
  Bruh.CanCollide = false
      Bruh.Size = Vector3.new(51.05, 24.12, 54.76)
	Bruh.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  Bruh.Transparency = 1
  game.Players.LocalPlayer.Character.Humanoid.Sit = false
  wait(0.3)
local Crim = Instance.new("Part")
   Crim.Name = "plr"
     Crim.Parent = workspace
       Crim.Anchored = true
         Crim.Archivable = true
      Crim.CFrame = CFrame.new(9e99, 9e99, 9e99)
   Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
Crim.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	Crim.Transparency = 1
	    Crim.Anchored = true
	 Crim.CanCollide = false
  lol = true				
Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
  Bruh.CanCollide = false
      Bruh.Size = Vector3.new(51.05, 24.12, 54.76)
	Bruh.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  Bruh.Transparency = 1
  game.Players.LocalPlayer.Character.Humanoid.Sit = false
end
for i,v in pairs(Workspace.Prison_ITEMS.giver:GetChildren()) do
	if v.Name == "M9" then
       lol = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
	end
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
if game.Players.LocalPlayer.Character["1"] then
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait()
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
end
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	if v.Name == "M9" then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
end
		v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
		until v.TeamColor.Name == "Really red"
wait(0.1)
HERE = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local A_1 = "\66\114\111\121\111\117\98\97\100\100"
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = HERE
until i == 0
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
_G.Crimall = false
end
end
end
end


local Crim = Instance.new("Part")
   Crim.Name = "plr"
     Crim.Parent = workspace
       Crim.Anchored = true
         Crim.Archivable = true
      Crim.CFrame = CFrame.new(9e99, 9e99, 9e99)
   Bruh = game.Workspace["Criminals Spawn"].SpawnLocation

_G.Crimalll = true
local Player = game.Players.LocalPlayer
local cpos = Player.Character.HumanoidRootPart.CFrame
for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
if v and v.Character then
if v.Name ~= Player.Name then
if v.Name ~= "jake11price" then
    repeat
    i = i-1
	repeat
	if v.Character.Humanoid.Sit == true then 
game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP) 
local A_1 = 
{
	[1] = 
{
	["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(277.738678, 6.89340925, 287.773712)), 
	["Distance"] = 4.7204174995422, 
	["Cframe"] = CFrame.new(832.049377, 101.392006, 2300.97168, 0.843892097, -0.0554918349, 0.533635378, 0, 0.994636595, 0.103430569, -0.536512911, -0.0872842371, 0.839366019), 
	["Hit"] = v.Character.Head
}, 
	[2] = 
{
	["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(303.047546, 21.3568707, 260.203888)), 
	["Distance"] = 4.8114862442017, 
	["Cframe"] = CFrame.new(832.390259, 101.550629, 2300.74097, 0.738044441, -0.112958886, 0.665229917, 7.45057971e-09, 0.985887885, 0.16740793, -0.674752235, -0.123554483, 0.727628946), 
	["Hit"] = v.Character.Head
}, 
	[3] = 
{
	["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(296.800507, 7.00420141, 268.067932)), 
	["Distance"] = 4.444625377655, 
	["Cframe"] = CFrame.new(832.185486, 101.391617, 2300.70264, 0.775115669, -0.0692948848, 0.628007889, 7.45057971e-09, 0.993967533, 0.109675139, -0.631819367, -0.0850109085, 0.770439863), 
	["Hit"] = v.Character.Head
}, 
	[4] = 
{
	["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(284.930573, 11.9850616, 280.483368)), 
	["Distance"] = 4.6211166381836, 
	["Cframe"] = CFrame.new(832.10083, 101.445007, 2300.86963, 0.820150614, -0.0735745132, 0.567397356, 0, 0.991697431, 0.128593579, -0.572147667, -0.105466105, 0.81334126), 
	["Hit"] = v.Character.Head
}, 
	[5] = 
{
	["RayObject"] = Ray.new(Vector3.new(827.412415, 101.489777, 2296.84326), Vector3.new(294.625824, 2.15741801, 270.538269)), 
	["Distance"] = 4.4639973640442, 
	["Cframe"] = CFrame.new(832.169434, 101.341301, 2300.73438, 0.784266233, -0.0537625961, 0.618090749, -3.7252903e-09, 0.99623847, 0.086654529, -0.620424569, -0.0679602176, 0.781316102), 
	["Hit"] = v.Character.Head
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
wait(0.3)
local Crim = Instance.new("Part")
   Crim.Name = "plr"
     Crim.Parent = workspace
       Crim.Anchored = true
         Crim.Archivable = true
      Crim.CFrame = CFrame.new(9e99, 9e99, 9e99)
   Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
Crim.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	Crim.Transparency = 1
	    Crim.Anchored = true
	 Crim.CanCollide = false
  lol = true				
Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
  Bruh.CanCollide = false
      Bruh.Size = Vector3.new(51.05, 24.12, 54.76)
	Bruh.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  Bruh.Transparency = 1
  game.Players.LocalPlayer.Character.Humanoid.Sit = false
wait(0.3)
local Crim = Instance.new("Part")
   Crim.Name = "plr"
     Crim.Parent = workspace
       Crim.Anchored = true
         Crim.Archivable = true
      Crim.CFrame = CFrame.new(9e99, 9e99, 9e99)
   Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
Crim.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	Crim.Transparency = 1
	    Crim.Anchored = true
	 Crim.CanCollide = false
  lol = true				
Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
  Bruh.CanCollide = false
      Bruh.Size = Vector3.new(51.05, 24.12, 54.76)
	Bruh.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  Bruh.Transparency = 1
  game.Players.LocalPlayer.Character.Humanoid.Sit = false
  wait(0.3)
local Crim = Instance.new("Part")
   Crim.Name = "plr"
     Crim.Parent = workspace
       Crim.Anchored = true
         Crim.Archivable = true
      Crim.CFrame = CFrame.new(9e99, 9e99, 9e99)
   Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
Crim.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	Crim.Transparency = 1
	    Crim.Anchored = true
	 Crim.CanCollide = false
  lol = true				
Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
  Bruh.CanCollide = false
      Bruh.Size = Vector3.new(51.05, 24.12, 54.76)
	Bruh.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  Bruh.Transparency = 1
  game.Players.LocalPlayer.Character.Humanoid.Sit = false
end
	for i,v in pairs(Workspace.Prison_ITEMS.giver:GetChildren()) do
	if v.Name == "M9" then
       lol = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
	end
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait()
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	if v.Name == "M9" then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
end
		v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
		until v.TeamColor.Name == "Really red"
wait(0.1)
HERE = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local A_1 = "\66\114\111\121\111\117\98\97\100\100"
local Event = game:GetService("Workspace").Remote.loadchar
Event:InvokeServer(A_1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = HERE
until i == 0
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
_G.Crimalll = false
end
end
end
end
end)

game:GetService('RunService').Stepped:connect(function()
if _G.Crimall == true then wait()
Crim.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	Crim.Transparency = 1
	    Crim.Anchored = true
	 Crim.CanCollide = false
  lol = true				
Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
  Bruh.CanCollide = false
      Bruh.Size = Vector3.new(51.05, 24.12, 54.76)
	Bruh.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  Bruh.Transparency = 1
wait(0.1)
end
end)
game:GetService('RunService').Stepped:connect(function()
if _G.Crimalll == true then wait()
Crim.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	Crim.Transparency = 1
	    Crim.Anchored = true
	 Crim.CanCollide = false
  lol = true				
Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
  Bruh.CanCollide = false
      Bruh.Size = Vector3.new(51.05, 24.12, 54.76)
	Bruh.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  Bruh.Transparency = 1
wait(0.1)
end
end)
end)
b6.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

b11.MouseButton1Click:Connect(function()
    Workspace.Remote.TeamEvent:FireServer("Bright orange")
end)

b12.MouseButton1Click:Connect(function()
    Workspace.Remote.TeamEvent:FireServer("Bright blue")
    end)
    


b7.MouseButton1Click:Connect(function()
    Players = game:GetService("Players")
for i, Lplayer in pairs(Players:GetPlayers()) do
if Lplayer.Name == game:GetService("Players").LocalPlayer.Name then
local dab = workspace:FindFirstChild(Lplayer.Name)
dab.HumanoidRootPart.CFrame = CFrame.new(863, 110, 2542)
end
end


Players = game:GetService("Players")
for i, player in pairs(Players:GetPlayers()) do
print(player.Name)
if player.Name ~= game:GetService("Players").LocalPlayer.Name then
local dab = workspace:FindFirstChild(player.Name)
dab.HumanoidRootPart.CFrame = CFrame.new(863, 113, 2542)
end
end

b8.MouseButton1Click:Connect(function()
    local mouse = game.Players.LocalPlayer:GetMouse()
local arrestEvent = game.Workspace.Remote.arrest
mouse.Button1Down:connect(function()
local obj = mouse.Target
local response = arrestEvent:InvokeServer(obj)
end)
end)

b9.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ArjuCJFn", true))()
end)

b10.MouseButton1Click:Connect(function()
    mainRemotes = game.ReplicatedStorage
meleeRemote = mainRemotes['meleeEvent']
mouse = game.Players.LocalPlayer:GetMouse()
punching = false
cooldown = false

function punch()
cooldown = true
local part = Instance.new("Part", game.Players.LocalPlayer.Character)
part.Transparency = 1
part.Size = Vector3.new(5, 2, 3)
part.CanCollide = false
local w1 = Instance.new("Weld", part)
w1.Part0 = game.Players.LocalPlayer.Character.Torso
w1.Part1 = part
w1.C1 = CFrame.new(0,0,2)
part.Touched:connect(function(hit)
if game.Players:FindFirstChild(hit.Parent.Name) then
local plr = game.Players:FindFirstChild(hit.Parent.Name) 
if plr.Name ~= game.Players.LocalPlayer.Name then
part:Destroy()

for i = 1,100 do
meleeRemote:FireServer(plr)
end
end
end
end)

wait(1)
cooldown = false
part:Destroy()
end


mouse.KeyDown:connect(function(key)
if cooldown == false then
if key:lower() == "f" then

punch()

end
end
end)
   
    end)
    end)
