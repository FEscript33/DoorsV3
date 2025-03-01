# XSX UI Library Documentation

## Basic Setup
```lua:setup.lua
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Consistt/Ui/main/UnLeaked"))()
library.title = "My Interface"
local Init = library:Init()
```

## Core Features

### Watermark
```lua:watermark.lua
local Watermark = library:Watermark("Example | v" .. library.version)
local FpsWatermark = Watermark:AddWatermark("FPS: " .. library.fps)
```

### Notifications
```lua:notifications.lua
local Notif = library:InitNotifications()
Notif:Notify("Message", 5, "information") -- Types: information, notification, alert, error, success
```

## UI Components

### Tabs
```lua:tabs.lua
local Tab = Init:NewTab("Main Tab")
local Section = Tab:NewSection("Section Name")
```

### Basic Elements

#### Labels
```lua:elements/label.lua
local Label = Tab:NewLabel("Info Text", "left") -- Alignments: left, center, right
```

#### Buttons
```lua:elements/button.lua
local Button = Tab:NewButton("Click Me", function()
    print("Clicked!")
end)
```

#### Toggles
```lua:elements/toggle.lua
local Toggle = Tab:NewToggle("Enable Feature", false, function(value)
    print("Toggle is:", value)
end)

-- Add keybind to toggle
Toggle:AddKeybind(Enum.KeyCode.RightControl)
```

#### Sliders
```lua:elements/slider.lua
local Slider = Tab:NewSlider("Speed", "", true, "/", {
    min = 0,
    max = 100,
    default = 50
}, function(value)
    print("Slider value:", value)
end)
```

#### Textboxes
```lua:elements/textbox.lua
-- Sizes: small, medium, large
local Textbox = Tab:NewTextbox("Enter Text", "", "placeholder", "all", "medium", true, false, function(text)
    print("Input:", text)
end)
```

#### Selectors
```lua:elements/selector.lua
local Selector = Tab:NewSelector("Choose Option", "default", {
    "Option 1",
    "Option 2",
    "Option 3"
}, function(selected)
    print("Selected:", selected)
end)
```

#### Keybinds
```lua:elements/keybind.lua
local Keybind = Tab:NewKeybind("Toggle UI", Enum.KeyCode.RightAlt, function(key)
    Init:UpdateKeybind(Enum.KeyCode[key])
end)
```

## Utility Functions

### Element Management
- Show/Hide: `:Show()`, `:Hide()`
- Remove: `:Remove()`
- Update Text: `:Text("new text")`
- Update Value: `:Set(value)` (for toggles)
- Fire Function: `:Fire()`

### System Information
```lua:utils.lua
library:GetUsername()  -- Get player username
library:GetPlaceId()  -- Get game place ID
library:GetJobId()    -- Get server ID
library:CheckIfLoaded() -- Check if UI is loaded
library:Rejoin()      -- Rejoin same server
```

## Best Practices
1. Initialize notifications before creating UI elements
2. Use appropriate element sizes for textboxes
3. Group related elements in sections
4. Add tooltips for complex features
5. Implement error handling in callbacks
