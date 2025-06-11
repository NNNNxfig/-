local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local camera = workspace.CurrentCamera


local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LoadingGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 1, 0)
label.BackgroundColor3 = Color3.new(0, 0, 0)
label.BackgroundTransparency = 0.5
label.TextColor3 = Color3.new(1, 1, 1)
label.TextScaled = true
label.Font = Enum.Font.SourceSansBold
label.Text = "PW RYLIT BLYAT!!!!!!"
label.Parent = screenGui


task.wait(5)


screenGui:Destroy()



local allParts = {}  


local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://9041745502"
sound.Volume = 1
sound.Looped = true
sound.Playing = true
sound.Parent = workspace


local function spawnPartsBatch()
	for i = 1, 15000 do
		local part = Instance.new("Part")
		part.Size = Vector3.new(2, 2, 2)
		part.Anchored = true
		part.CanCollide = false
		part.Material = Enum.Material.Neon
		part.Position = camera.CFrame.Position + camera.CFrame.LookVector * 10 +
			Vector3.new(math.random(-20, 20), math.random(-20, 20), math.random(-20, 20))
		part.BrickColor = BrickColor.Random()
		part.Parent = workspace
		table.insert(allParts, part)
	end
end


task.spawn(function()
	while true do
		spawnPartsBatch()
		task.wait(0.0000001)
	end
end)


RunService.RenderStepped:Connect(function()
	for _, part in ipairs(allParts) do
		part.Color = Color3.new(math.random(), math.random(), math.random())
	end


	for i = 1, 100000 do
		local a = math.sin(math.random())
		local b = math.log(math.random() + 1)
		local c = math.pow(a + b, 3)
		local d = math.sqrt(c)
	end
end)


task.spawn(function()
	while true do
		for i = 1, 1000000 do
			local x = math.cos(i) * math.sin(i)
			local y = math.sqrt(math.abs(x))
		end
		task.wait()
	end
end)
