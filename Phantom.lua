--V1.1



-- Instances:



local XfinityWifi = Instance.new("ScreenGui")


local Frame = Instance.new("ImageLabel")


local TextLabel = Instance.new("TextLabel")


local TextLabel_2 = Instance.new("TextLabel")


local Bedwars = Instance.new("TextButton")


local PrisonLife = Instance.new("TextButton")


local owlhub = Instance.new("TextButton")


local Dahood = Instance.new("TextButton")



--Properties:



XfinityWifi.Name = "XfinityWifi"


XfinityWifi.Parent = game.CoreGui



Frame.Name = "Frame"


Frame.Parent = XfinityWifi


Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


Frame.BackgroundTransparency = 1.000


Frame.Position = UDim2.new(0.254074067, 0, 0.289665222, 0)


Frame.Size = UDim2.new(0, 438, 0, 349)


Frame.Image = "rbxassetid://3570695787"


Frame.ImageColor3 = Color3.fromRGB(255, 230, 219)


Frame.ScaleType = Enum.ScaleType.Slice


Frame.SliceCenter = Rect.new(100, 100, 100, 100)


Frame.SliceScale = 0.120



TextLabel.Parent = Frame


TextLabel.BackgroundColor3 = Color3.fromRGB(255, 201, 201)


TextLabel.BackgroundTransparency = 1.000


TextLabel.BorderSizePixel = 0


TextLabel.Position = UDim2.new(0.117777787, 0, 0.209606975, 0)


TextLabel.Size = UDim2.new(0, 438, 0, 47)


TextLabel.Font = Enum.Font.Ubuntu


TextLabel.Text = ""


TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)


TextLabel.TextSize = 38.000



TextLabel_2.Parent = TextLabel


TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 230, 219)


TextLabel_2.BorderSizePixel = 0


TextLabel_2.Position = UDim2.new(0.152968049, 0, -1.48000002, 0)


TextLabel_2.Size = UDim2.new(0, 200, 0, 50)


TextLabel_2.Font = Enum.Font.SourceSans


TextLabel_2.Text = "Phantom"


TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)


TextLabel_2.TextSize = 37.000



Bedwars.Name = "Bedwars"


Bedwars.Parent = Frame


Bedwars.BackgroundColor3 = Color3.fromRGB(59, 59, 59)


Bedwars.Position = UDim2.new(0.415525109, 0, 0.212034389, 0)


Bedwars.Size = UDim2.new(0, 205, 0, 50)


Bedwars.Font = Enum.Font.SourceSans


Bedwars.Text = "Bedwars"


Bedwars.TextColor3 = Color3.fromRGB(255, 255, 255)


Bedwars.TextSize = 14.000



PrisonLife.Name = "Prison Life"


PrisonLife.Parent = Frame


PrisonLife.BackgroundColor3 = Color3.fromRGB(59, 59, 59)


PrisonLife.Position = UDim2.new(0.415525109, 0, 0.395415485, 0)


PrisonLife.Size = UDim2.new(0, 205, 0, 50)


PrisonLife.Font = Enum.Font.SourceSans


PrisonLife.Text = "Prison life"


PrisonLife.TextColor3 = Color3.fromRGB(255, 255, 255)


PrisonLife.TextSize = 14.000



owlhub.Name = "owl hub"


owlhub.Parent = Frame


owlhub.BackgroundColor3 = Color3.fromRGB(59, 59, 59)


owlhub.Position = UDim2.new(0.415525109, 0, 0.598853886, 0)


owlhub.Size = UDim2.new(0, 205, 0, 50)


owlhub.Font = Enum.Font.SourceSans


owlhub.Text = "Owl Hub"


owlhub.TextColor3 = Color3.fromRGB(255, 255, 255)


owlhub.TextSize = 14.000



Dahood.Name = "Da hood"


Dahood.Parent = Frame


Dahood.BackgroundColor3 = Color3.fromRGB(59, 59, 59)


Dahood.Position = UDim2.new(0.415525109, 0, 0.799426973, 0)


Dahood.Size = UDim2.new(0, 205, 0, 50)


Dahood.Font = Enum.Font.SourceSans


Dahood.Text = "Da hood"


Dahood.TextColor3 = Color3.fromRGB(255, 255, 255)


Dahood.TextSize = 14.000



-- Scripts:



local function PEGM_fake_script() -- Frame.Dragify 


	local script = Instance.new('LocalScript', Frame)



	local UIS = game:GetService("UserInputService")


	function dragify(Frame)


		dragToggle = nil


		dragSpeed = 0.15


		dragInput = nil


		dragStart = nil


		dragPos = nil


		function updateInput(input)


			Delta = input.Position - dragStart


			Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)


			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()


		end


		Frame.InputBegan:Connect(function(input)


			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then


				dragToggle = true


				dragStart = input.Position


				startPos = Frame.Position


				input.Changed:Connect(function()


					if input.UserInputState == Enum.UserInputState.End then


						dragToggle = false


					end


				end)


			end


		end)


		Frame.InputChanged:Connect(function(input)


			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then


				dragInput = input


			end


		end)


		game:GetService("UserInputService").InputChanged:Connect(function(input)


			if input == dragInput and dragToggle then


				updateInput(input)


			end


		end)


	end


	dragify(script.Parent)


	


end


coroutine.wrap(PEGM_fake_script)()


local function XYTAWY_fake_script() -- Bedwars.Load 


	local script = Instance.new('LocalScript', Bedwars)



	script.Parent.MouseButton1Click:Connect(function()


		loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()


	end)


end


coroutine.wrap(XYTAWY_fake_script)()


local function SUXLZT_fake_script() -- PrisonLife.Load 


	local script = Instance.new('LocalScript', PrisonLife)



	script.Parent.MouseButton1Click:Connect(function()


		loadstring(game:HttpGet("https://raw.githubusercontent.com/banana-nana/KRNL/main/Prisonlife.lua",true))();


	end)


end


coroutine.wrap(SUXLZT_fake_script)()


local function PVOP_fake_script() -- owlhub.Load 


	local script = Instance.new('LocalScript', owlhub)



		script.Parent.MouseButton1Click:Connect(function()


		loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();


	end)


end


coroutine.wrap(PVOP_fake_script)()


local function DMBAU_fake_script() -- Dahood.Load 


	local script = Instance.new('LocalScript', Dahood)



	script.Parent.MouseButton1Click:Connect(function()


		loadstring(game:HttpGet('https://solarishub.dev/script.lua',true))()


	end)


end


coroutine.wrap(DMBAU_fake_script)()


