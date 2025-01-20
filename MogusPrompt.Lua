local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "ScriptHub -- Mogus Prompt", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local function hookProximityPrompt()
    for _, prompt in ipairs(game:GetService("Workspace"):GetDescendants()) do
        if prompt:IsA("ProximityPrompt") then
            prompt.HoldDuration = 0
            prompt.RequiresLineOfSight = false
        end
    end
    
    game:GetService("Workspace").DescendantAdded:Connect(function(prompt)
        if prompt:IsA("ProximityPrompt") then
            prompt.HoldDuration = 0
            prompt.RequiresLineOfSight = false
        end
    end)
end

local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

MainTab:AddToggle({
    Name = "Instant Interact",
    Default = false,
    Callback = function(Value)
        if Value then
            hookProximityPrompt()
        end
    end
})

local MovementTab = Window:MakeTab({
    Name = "Movement",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

MovementTab:AddSlider({
    Name = "Speed",
    Min = 1,
    Max = 1000,
    Default = 16,

    Increment = 1,
    ValueName = "WalkSpeed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end    
})

MovementTab:AddSlider({
    Name = "Jump Height",
    Min = 1,
    Max = 1000,
    Default = 50,

    Increment = 1,
    ValueName = "Jumppower",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end    
})

MovementTab:AddButton({
	Name = "Fly Gui",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
  	end    
})

