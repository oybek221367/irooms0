--[[

		Gui2Lua™
		10zOfficial
		Version 1.0.0

]]


-- Instances

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

-- Properties

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.Position = UDim2.new(0.0810344815, 0, 0.107913673, 0)
Frame.Size = UDim2.new(0, 1404, 0, 544)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.Position = UDim2.new(0.18589744, 0, 0.108455881, 0)
TextLabel.Size = UDim2.new(0, 915, 0, 432)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

-- Scripts

local function CDCNCS_fake_script() -- ScreenGui.LocalScript 
	local script = Instance.new('LocalScript', ScreenGui)

	local a = workspace:WaitForChild("Entities")
	
	script.Parent.Frame.Visible = false
	a.ChildAdded:Connect(function(huy)
		script.Parent.Frame.Visible = true 
		script.Parent.Frame.TextLabel.Text = huy.Name 
		wait(2)
		script.Parent.Frame.Visible = false
	end)
end
coroutine.wrap(CDCNCS_fake_script)()
