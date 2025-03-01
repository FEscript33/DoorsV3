# GayPrideFlag UI Library Documentation

## Initial Setup
```lua:setup.lua
local VLib = loadstring(game:HttpGet("https://pastebin.com/raw/Mb49kKTP"))()
local win = VLib:Window("TITLE", Color3.fromRGB(196, 40, 28))
```

## Basic Structure
```lua:structure.lua
-- Create tabs
local mainTab = win:Tab("MAIN")
local miscTab = win:Tab("MISC")
local creditsTab = win:Tab("CREDITS")
```

## UI Elements

### Buttons
```lua:elements/button.lua
mainTab:Button("Click Me", function()
    print("Button clicked!")
end)
```

### Toggles
```lua:elements/toggle.lua
mainTab:Toggle("Toggle Feature", function(state)
    if state then
        print("Toggle enabled")
    else
        print("Toggle disabled")
    end
end)
```

### Dropdowns
```lua:elements/dropdown.lua
local options = {"Option 1", "Option 2", "Option 3"}
mainTab:Dropdown("Select Option", options, function(selectedOption)
    print("Selected: " .. selectedOption)
end)
```

### Labels
```lua:elements/label.lua
mainTab:Label("Information Text")
```

### Sliders
```lua:elements/slider.lua
mainTab:Slider("Adjust Value", -9, 10, 3, function(value)
    print("Slider value: " .. value)
end)
```

## Common Use Cases

### Auto-Farm Setup
```lua:examples/autofarm.lua
-- Create table of NPCs
local Npc_Table = {}
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
    if v:IsA("Model") and v:FindFirstChild("NPC") then
        table.insert(Npc_Table, v.Name)
    end 
end

-- Create dropdown for NPC selection
mainTab:Dropdown("Select NPC", Npc_Table, function(selected)
    selectedNPC = selected
end)
```

### Tool Management
```lua:examples/tools.lua
-- Get player tools
local tool_table = {}
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(tool_table, v.Name)
    end
end

-- Create tool selector
mainTab:Dropdown("Select Tool", tool_table, function(selected)
    selectedTool = selected
end)
```

## Best Practices
1. Group related features in the same tab
2. Use clear, descriptive names for UI elements
3. Implement error handling in callbacks
4. Keep the interface organized and minimal
5. Add descriptive labels for complex features

## Features
- Simple and lightweight
- Easy to implement
- Basic UI elements
- Color customization
- Tab organization
- Callback system
