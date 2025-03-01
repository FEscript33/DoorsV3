# Linoria Rewrite UI Library Documentation

A comprehensive UI library for Roblox with theme management and configuration saving capabilities.

## Basic Setup

```lua:setup.lua
local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
```

## Creating a Window

```lua:window.lua
local Window = Library:CreateWindow({
    Title = 'Example Menu',
    Center = true,
    AutoShow = true,
})
```

## Creating Tabs and Groups

```lua:tabs.lua
local Tabs = {
    Main = Window:AddTab('Main'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Groupbox')
```

## Elements

### Toggle
```lua:elements/toggle.lua
LeftGroupBox:AddToggle('MyToggle', {
    Text = 'This is a toggle',
    Default = true,
    Tooltip = 'This is a tooltip',
    Callback = function(Value)
        print('Toggle value:', Value)
    end
})
```

### Button
```lua:elements/button.lua
local MyButton = LeftGroupBox:AddButton({
    Text = 'Button',
    Func = function()
        print('Button clicked!')
    end,
    DoubleClick = false,
    Tooltip = 'Button tooltip'
})
```

### Slider
```lua:elements/slider.lua
LeftGroupBox:AddSlider('MySlider', {
    Text = 'Slider',
    Default = 0,
    Min = 0,
    Max = 5,
    Rounding = 1,
    Compact = false,
})
```

### Dropdown
```lua:elements/dropdown.lua
LeftGroupBox:AddDropdown('MyDropdown', {
    Values = { 'Option 1', 'Option 2', 'Option 3' },
    Default = 1,
    Multi = false,
    Text = 'Dropdown',
    Tooltip = 'Select an option',
})
```

### ColorPicker
```lua:elements/colorpicker.lua
LeftGroupBox:AddLabel('Color'):AddColorPicker('ColorPicker', {
    Default = Color3.new(0, 1, 0),
    Title = 'Color Picker',
})
```

### KeyPicker
```lua:elements/keypicker.lua
LeftGroupBox:AddLabel('Keybind'):AddKeyPicker('KeyPicker', {
    Default = 'MB2',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Keybind',
})
```

## Theme and Save Management

```lua:management.lua
-- Setup Theme Manager
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder('MyScriptHub')
ThemeManager:ApplyToTab(Tabs['UI Settings'])

-- Setup Save Manager
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetFolder('MyScriptHub/specific-game')
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })
SaveManager:BuildConfigSection(Tabs['UI Settings'])
```

## Additional Features

- Watermark customization
- Menu keybind system
- Notifications
- Auto-save configurations
- Theme presets
- Multi-select dropdowns
- Player dropdowns

## Usage Tips

1. Always set up Theme and Save managers for persistent configurations
2. Use tooltips for better user experience
3. Organize elements in logical groupboxes
4. Utilize callbacks for immediate response to user interactions
5. Consider using the auto-load config feature for user convenience

This UI library provides a robust foundation for creating professional-looking interfaces with extensive customization options.
