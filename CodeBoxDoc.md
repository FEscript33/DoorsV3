# CodeBox by Smartlightyear/Kardin - & Lunar
Documentation

## Update:
I'm to lazy to really do this stuff so enjoy - join the dc or i will come and shaggle your balls

## Loadstring Generator
https://lgenorator.netlify.app/

## Color Wheel RGB
https://rgcolorpicker.netlify.app/


## WalkSpeed
```lua
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value --if you were using a UI lib Value would represent the speed, can be used for sliders, but if you want the speed in personal just replace value with a number
```
## LoopWalkSpeed
let's say you get harrased by anticheat, this is the key
```lua
RunService.Heartbeat:Connect(function()
    if Value then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
    end
end)
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
## Chat Message (TextChatService)
```lua
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("Message goes here!")
```

## Repeat Function
```lua
for i=1,5 do print("Replace the print with ur command") task.wait(0) end
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
goto https://create.roblox.com/dashboard/creations?activeTab=Image and get a Image NOT DECAL!
```lua
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Notification", -- Required
	Text = "Your Txt", -- Required
	Icon = "rbxassetid://" -- Optional,
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
## NOCLIP toggle,
```lua
local NoclipEnabled = false
if not _G.NoclipStarted then
    _G.NoclipStarted = true
    game:GetService("RunService").Stepped:Connect(function()
        if NoclipEnabled then
            for _, part in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end)
end

NoclipEnabled = not NoclipEnabled
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Noclip",
    Text = NoclipEnabled and "Enabled" or "Disabled",
    Duration = 2
})
```
Version optimized for UI libraries
```lua
game:GetService("RunService").Stepped:Connect(function() if Value then for _, part in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if part:IsA("BasePart") then part.CanCollide = false end end end end)
```
Replace Value with your callback function value,

## Loop Functions


```lua
while wait(5) do -- replace 5 with the time you want it to repeat
    print("Hello") -- replace this with your fuction
end
```

## Infinity Jump
Do NOT worry it will toggle and untoggle when you run the script
```lua
local InfiniteJumpEnabled = false
local UserInputService = game:GetService("UserInputService")

if not _G.InfiniteJumpStarted then
    _G.InfiniteJumpStarted = true
    
    UserInputService.JumpRequest:Connect(function()
        if InfiniteJumpEnabled then
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
        end
    end)
end

-- Toggle the current state
InfiniteJumpEnabled = not InfiniteJumpEnabled
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Infinite Jump",
    Text = InfiniteJumpEnabled and "Enabled" or "Disabled",
    Duration = 2
})
```
here is the short choppy version if you wanna use this without the notification,
```lua
game:GetService("UserInputService").JumpRequest:Connect(function() if Value then game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping") end end)
```
Replace Value with your callback function value

## ESP TOGGlE
version for UI libs
```lua
game:GetService("RunService").RenderStepped:Connect(function() if Value then for _,v in pairs(game.Players:GetPlayers()) do if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then if not v.Character.HumanoidRootPart:FindFirstChild("ESP") then local ESP = Instance.new("BillboardGui", v.Character.HumanoidRootPart) ESP.Name = "ESP" ESP.Size = UDim2.new(4,0,5.5,0) ESP.AlwaysOnTop = true local TextLabel = Instance.new("TextLabel", ESP) TextLabel.Text = v.Name TextLabel.TextColor3 = Color3.fromRGB(255,0,0) TextLabel.Size = UDim2.new(1,0,1,0) TextLabel.BackgroundTransparency = 1 end v.Character.HumanoidRootPart.ESP.Enabled = true end end end end)
```
If you wanna use the simple version with the toggle here
```lua
local ESPEnabled = false
if not _G.ESPStarted then
    _G.ESPStarted = true
    game:GetService("RunService").RenderStepped:Connect(function()
        if ESPEnabled then
            for _,v in pairs(game.Players:GetPlayers()) do
                if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                    if not v.Character.HumanoidRootPart:FindFirstChild("ESP") then
                        local ESP = Instance.new("BillboardGui", v.Character.HumanoidRootPart)
                        ESP.Name = "ESP"
                        ESP.Size = UDim2.new(4,0,5.5,0)
                        ESP.AlwaysOnTop = true
                        local TextLabel = Instance.new("TextLabel", ESP)
                        TextLabel.Text = v.Name
                        TextLabel.TextColor3 = Color3.fromRGB(255,0,0)
                        TextLabel.Size = UDim2.new(1,0,1,0)
                        TextLabel.BackgroundTransparency = 1
                    end
                    v.Character.HumanoidRootPart.ESP.Enabled = true
                end
            end
        end
    end)
end

ESPEnabled = not ESPEnabled
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "ESP",
    Text = ESPEnabled and "Enabled" or "Disabled",
    Duration = 2
})

```

## Teleport to Player

```lua
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players"):GetPlayers()[table.find(game:GetService("Players"):GetPlayers(), function(p) return p.DisplayName:lower() == "TARGET_DISPLAY_NAME":lower() end) or 1].Character.HumanoidRootPart.CFrame
```
here is an example on how to use it in a UI library, this is rayfield
```lua
local Tab = Window:CreateTab("Player", 4483362458)
local Dropdown = Tab:CreateDropdown({
   Name = "Select Player",
   Options = players,
   CurrentOption = "",
   Flag = "Dropdown1",
   Callback = function(Value)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players"):GetPlayers()[table.find(game:GetService("Players"):GetPlayers(), function(p) return p.DisplayName:lower() == Value:lower() end) or 1].Character.HumanoidRootPart.CFrame
   end,
})
```

## Change Roblox Mouse Cursor
get images from the toolbox on roblox studio or here from your library https://create.roblox.com/dashboard/creations?activeTab=Image and get a Image NOT DECAL!
```lua
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.Icon = "rbxassetid://123456789" -- Replace with cursor image ID
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
