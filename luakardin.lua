local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/HTDBarsi/synui/main/main.lua"))()

-- Create all tabs
newtab("Tutorial")
newtab("New")
newtab("Universal")
newtab("Games")
newtab("FE")
newtab("Credits")
newtab("Bypassers")

-- Tutorial Tab
addlabel("Welcome to Vxly Hub V1.11", "Tutorial")
addlabel("Right CTRL or Button to Toggle", "Tutorial")
addlabel("All Scripts Verified Safe", "Tutorial")
addlabel("Added Support: Fisch, TOH, Brookhaven", "Tutorial")

-- Daily
addbutton("Fisch - Speed Hub X", "New", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
end)

addbutton("Fisch - Raito Hub", "New", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/RaitoHub/refs/heads/main/Script"))()
end)

addbutton("Ability Wars - Komaru", "New", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/railme37509124/komaruhubabilitywars/main/script.lua"))()
end)

addbutton("TOH - Sasware", "New", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/centerepic/sasware_TowerOfHell/main/TowerOfHell_sw.lua"))()
end)

-- Universal Scripts
addbutton("Nameless Admin", "Universal", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
end)

addbutton("Enable Reset Button", "Universal", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/px5XVSG0",true))()
end)

addbutton("MSPaint GUI", "Universal", function()
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/002c19202c9946e6047b0c6e0ad51f84.lua"))()
end)

addbutton("Infinite Yield", "Universal", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

-- Games Scripts
addbutton("Doors - BlackKing", "Games", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing-obf/main/Doors%20Blackking%20And%20BobHub"))()
end)

addbutton("Doors - MSPaintV2", "Games", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/mspaint/main/main.lua"))()
end)

addbutton("Bedwars - Aurora", "Games", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cocotv666/Aurora/main/Aurora_Loader"))()
end)

addbutton("Break In 2 - Daniel Hub", "Games", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/danielontopp/scripts/main/77_OCM25E2M.lua.txt"))()
end)

addbutton("MM2 - Vertex Hub", "Games", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vertex-peak/vertex/refs/heads/main/loadstring"))()
end)

-- FE Scripts
addbutton("FE Animation Pack", "FE", function()
    loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Fe-Silly-Animation-V4-22405"))()
end)

addbutton("FE Head Pack", "FE", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Gazer-Ha/Valiant-Ui-Lib-Gazed-/refs/heads/main/Head%20Pack"))()
end)

addbutton("FE Hug -- H to Use", "FE", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JSFKGBASDJKHIOAFHDGHIUODSGBJKLFGDKSB/fe/refs/heads/main/FEHUGG"))()
end)

addbutton("FE Fighter", "FE", function()
    loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-FE-Fighter-OPTIMIZED-VER-inspired-by-gale-24162"))()
end)

addbutton("FE Draw Chat", "FE", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/q6WWVCKC"))()
end)

addbutton("FE Draw Chat AK_ADMIN -- E to toggle", "FE", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AKadminlol/Chatdraw/refs/heads/main/Chattdraw"))()
end)


addbutton("Mogus Prompt", "FE", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Smartlightyear/MogusLancher/1aa0678ceccbcab856b9b7264e2b2cdfad829519/GitHubSourceCode.Lua"))()
end)

addbutton("FE MEMEY GOJO", "FE", function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Fe-Meme-Animation-R6-24167"))()
    end)

--bypasser tab
addlabel("Bypassers", "Bypassers")
addbutton("Chat Bypasser", "Bypassers", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FoxlinesTheRealOne/FoxlinesTheRealOne/refs/heads/main/Chat%20Bypass%20beta"))()
    end)


-- Credits
addlabel("Created by MaxximusPrimal", "Credits")
addlabel("Created by TagcLa", "Credits")
addlabel("YouTube: @MaxximusPrimal", "Credits")
addlabel("YouTube: @TagcLa", "Credits")
addlabel("YouTube: @alpha3723-i6p", "Credits")

-- Create draggable UI Toggle button
local ScreenGui = Instance.new("ScreenGui")
local Button = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false

Button.Name = "UIToggle"
Button.Parent = ScreenGui
Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Button.BorderColor3 = Color3.fromRGB(255, 255, 255)
Button.Position = UDim2.new(0, 10, 0.5, -25)
Button.Size = UDim2.new(0, 100, 0, 50)
Button.Font = Enum.Font.SourceSans
Button.Text = "UI Toggle"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 20
Button.Draggable = true
Button.Active = true

-- Toggle functionality
local function toggleUI()
    if game:GetService("CoreGui"):FindFirstChild("ScreenGui") then
        game:GetService("CoreGui").ScreenGui.Enabled = not game:GetService("CoreGui").ScreenGui.Enabled
    end
end

Button.MouseButton1Click:Connect(toggleUI)

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.RightControl then
        toggleUI()
    end
end)


-- fixed 4 u [by lunar] --
