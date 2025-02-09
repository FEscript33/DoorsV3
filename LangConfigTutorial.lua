-- I don't recommend messing with anything besides Eng and Span (Languages) this is simply a tutorial, no updates will be added, and do not obfuscate (that part was to my dev)

local LangConfig = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Span = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Eng = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local opt = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local Unload = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UICorner_5 = Instance.new("UICorner")


LangConfig.Name = "LangConfig"
LangConfig.Parent = game.CoreGui
LangConfig.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LangConfig.ResetOnSpawn = false
LangConfig.Enabled = true
LangConfig.IgnoreGuiInset = true

Frame.Parent = LangConfig
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.140000001, 0, 0.150485441, 0)
Frame.Size = UDim2.new(0, 491, 0, 302)

Span.Name = "Span"
Span.Parent = Frame
Span.BackgroundColor3 = Color3.fromRGB(141, 0, 0)
Span.BorderColor3 = Color3.fromRGB(0, 0, 0)
Span.BorderSizePixel = 0
Span.Position = UDim2.new(0.0448065177, 0, 0.271523178, 0)
Span.Size = UDim2.new(0, 447, 0, 64)
Span.Font = Enum.Font.Arcade
Span.Text = "Spanish"
Span.TextColor3 = Color3.fromRGB(255, 255, 255)
Span.TextScaled = true
Span.TextSize = 14.000
Span.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 7)
UICorner.Parent = Span

Eng.Name = "Eng"
Eng.Parent = Frame
Eng.BackgroundColor3 = Color3.fromRGB(0, 8, 161)
Eng.BorderColor3 = Color3.fromRGB(0, 0, 0)
Eng.BorderSizePixel = 0
Eng.Position = UDim2.new(0.0448065177, 0, 0.569536448, 0)
Eng.Size = UDim2.new(0, 447, 0, 64)
Eng.Font = Enum.Font.Arcade
Eng.Text = "English"
Eng.TextColor3 = Color3.fromRGB(255, 255, 255)
Eng.TextScaled = true
Eng.TextSize = 14.000
Eng.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 7)
UICorner_2.Parent = Eng

opt.Name = "opt"
opt.Parent = Frame
opt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
opt.BorderColor3 = Color3.fromRGB(0, 0, 0)
opt.BorderSizePixel = 0
opt.Position = UDim2.new(0.297352344, 0, 0.0496688746, 0)
opt.Size = UDim2.new(0, 200, 0, 50)
opt.Font = Enum.Font.Michroma
opt.Text = "Choose a Language"
opt.TextColor3 = Color3.fromRGB(255, 255, 255)
opt.TextScaled = true
opt.TextSize = 14.000
opt.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
opt.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 15)
UICorner_3.Parent = opt

Unload.Name = "Unload"
Unload.Parent = Frame
Unload.BackgroundColor3 = Color3.fromRGB(161, 0, 0)
Unload.BorderColor3 = Color3.fromRGB(0, 0, 0)
Unload.BorderSizePixel = 0
Unload.Position = UDim2.new(-0.0244399179, 0, -0.0231788084, 0)
Unload.Size = UDim2.new(0, 73, 0, 64)
Unload.Font = Enum.Font.Arcade
Unload.Text = "X"
Unload.TextColor3 = Color3.fromRGB(255, 255, 255)
Unload.TextScaled = true
Unload.TextSize = 14.000
Unload.TextStrokeTransparency = 0.000
Unload.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 7)
UICorner_4.Parent = Unload

UICorner_5.CornerRadius = UDim.new(0, 10)
UICorner_5.Parent = Frame

Unload.MouseButton1Click:Connect(function()
	LangConfig:Destroy()
end)

Eng.MouseButton1Click:Connect(function()
	LangConfig:Destroy()
	loadstring(game:HttpGet(('https://pastebin.com/raw/GQ7VPnbz'),true))() --loadstring here
end)

Span.MouseButton1Click:Connect(function()
	LangConfig:Destroy()
	loadstring(game:HttpGet(('https://pastebin.com/raw/GQ7VPnbz'),true))() --loadstring here
end)
