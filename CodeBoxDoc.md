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

 ## Running Loadstrings
```lua
--[[With different UI librarys you have to use a certain method to run the loadstrings like rayfield, but here is the normal way]]-- loadstring(game:HttpGet("Your  Raw link here",true))() 
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
