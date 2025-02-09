# CodeBox by Smartlightyear/Kardin
Documentation

## Update:
This is where we show you simple functions that can help you code

## WalkSpeed
```lua
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value --if you were using a UI lib Value would represent the speed, can be used for sliders, but if you want the speed in personal just replace value with a number
```

## JumpPower
```lua
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value --if you were using a UI lib Value would represent the JumpPower, can be used for sliders, but if you want the jumppower in personal just replace value with a number
```

## Reseting Character
```lua
game.Players.LocalPlayer.Character.Humanoid.Health = 0 -- sadly trying to make this 100 doesn't work as the server denies it.
```

 ## Firing Events
```lua
game.ReplicatedStorage.RandomEvent:FireServer() --replace RandomEVent with the event you wanna trigger.
```
 ## Chat Message (Legacy)
```lua
game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("Text Here", "All") --replace text here with your message, only change that
```

 ## Running Loadstrings
```lua
--[[With different UI librarys you have to use a certain method to run the loadstrings like rayfield, but here is the normal way]]--
loadstring(game:HttpGet("Your  Raw link here",true))() 
```
 ## Running Loadstrings method 2
```lua
--[[This is the rayfield method to run loadstrings]]--
local scriptURL = "Your Script here"
        local success, err = pcall(function()
            local script = game:HttpGet(scriptURL)
            loadstring(script)()
        end)

        if not success then
            print("Failed to load script: " .. err)
        end
    end 
```
 
 ## Copy Place ID
```lua
--[[makes you copy the place ID,]]--
setclipboard(tostring(game.PlaceId))
```
## Click on Click Detector
```lua
game.Workspace.FolderName.PartwithClickDetector.Random:Click() --Replace Random with you're click detector, replace Foldername, with the name of the folder its in, if not in a folder, just remove it, replace Partwithclickdector with the part the detectors located in
```

## TP To a pos then back
```lua
local p, c, h = game.Players.LocalPlayer, game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait(), game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") local o = h.Position; h.CFrame = CFrame.new(positionHere); wait(0); h.CFrame = CFrame.new(o) --replace positionHere with your position,

```

 ## Notification
```lua
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Notification", -- Required
	Text = "Your Txt", -- Required
	Icon = "rbxassetid://" -- Optional, now if you wannna add a icon, go to https://create.roblox.com/dashboard/creations?activeTab=Image and get a Image NOT DECAL!
})
```

 ## Copy Text
```lua
setclipboard("Text goes here") --put your text their
```

 ## Loadstrings for Rayfield P2,
```lua
-- Helper function for script buttons
local function createScriptButton(tab, name, url)
    tab:CreateButton({
        Name = name,
        Callback = function()
            loadstring(game:HttpGet(url))()
        end
    })
end -- put this after the create window crap
```

## Loadstring button for RayField P2,
```lua
createScriptButton(YOURTABHERE, "BUTTON NAME HERE", "RAW LINK HERE")
```
## TP TO a Position
```lua
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 0, 0) --replace 0, 0, 0 with the position you want your character to move to, (x, Y, Z)
```
## NOCLIP, optimized for KAVO UI Lib,
```lua
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Noclip Script
local noclipEnabled = false
Section:NewToggle("Noclip", "Walk through walls", function(state) -- use this with replace this with the toggle you want,
    noclipEnabled = state
    if noclipEnabled then
        RunService.Stepped:Connect(function()
            if noclipEnabled and character then
                for _, part in pairs(character:GetChildren()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end
        end)
    end
end)
```
## Infinite jump Toggle optimized for KAVO UI
```lua
-- Infinite Jump Toggle
local infiniteJumpEnabled = false
_G.JumpHeight = 50

Section:NewToggle("Infinite Jump", "Toggle infinite jumping", function(state)
    infiniteJumpEnabled = state
end)

UserInputService.InputBegan:Connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        if infiniteJumpEnabled then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid and (humanoid:GetState() == Enum.HumanoidStateType.Jumping or humanoid:GetState() == Enum.HumanoidStateType.Freefall) then
                local rootPart = humanoid.Parent:FindFirstChild("HumanoidRootPart")
                if rootPart then
                    rootPart.Velocity = Vector3.new(0, _G.JumpHeight, 0)
                end
            end
        end
    end
end)
```
## Loop Functions
```lua
while wait(5) do -- replace 5 with the time you want it to repeat
    print("Hello") -- replace this with your fuction
end
```


## Print Functions
prints

## normal Messages
```lua
print("Txt here")
```

## Errors
```lua
error("Txt here")
```

## Warnings
```lua
warn("Txt here")
```
