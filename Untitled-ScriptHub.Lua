local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Untitled ScriptHub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "FE",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "FE"
})

Tab:AddLabel("Movement Sliders!")

Tab:AddSlider({
	Name = "Speed",
	Min = 0,
	Max = 500,
	Default = 16,
	
	Increment = 1,
	ValueName = "walkspeed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

Tab:AddSlider({
	Name = "Jumppower",
	Min = 0,
	Max = 1000,
	Default = 50,

	Increment = 1,
	ValueName = "jumppower",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

Tab:AddLabel("FE scripts!")

Tab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
      		game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Infinite Yield", -- Required
	Text = "Loading...", -- Required
})
wait(5)
      		game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Infinite", -- Required
    Text = "Loaded!", -- Required
     Icon = "rbxassetid://15011943566" -- Optional
})
wait(1)
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
  	end    
})

Tab:AddButton({
	Name = "Energize UI",
	Callback = function()
      		game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Energize UI", -- Required
	Text = "Loading...", -- Required
})
wait(5)
      		game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Energize UI", -- Required
    Text = "Loaded!", -- Required
     Icon = "rbxassetid://15011943566" -- Optional
})
wait(1)
loadstring(game:HttpGet("https://pastebin.com/raw/1p6xnBNf"))()
  	end    
})

--loadstring(game:HttpGet(('https://pastebin.com/raw/1p6xnBNf'),true))() --this one isn't mine credits to the owner!

local Tab = Window:MakeTab({
	Name = "BlackKing",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = BlackKingTab:AddSection({
	Name = "Scripts"
})


BlackKingTab:AddButton({
	Name = "DOORS",
	Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Smartlightyear/DoorsV3/refs/heads/main/BlackKingXBobHub",true))()	
})

BlackKingTab:AddButton({
	Name = "DOORS",
	Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Smartlightyear/DoorsV3/refs/heads/main/BlackKingXBobHub",true))()	
})


local Tab = Window:MakeTab({
	Name = "Rivals",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Rivals"
})

Tab:AddButton({
	Name = "Rivals Soft Aim and More!",
	Callback = function()
      		game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Rivals Script", -- Required
	Text = "Loading...", -- Required
})
wait(2)
      		game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Rivals", -- Required
	Text = "Loaded!", -- Required
    Icon = "rbxassetid://15011943566" -- Optional
    })  
wait(1)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Sheeshablee73/Scriptss/main/RivalsUPD2.lua"))()
  	end    
})
