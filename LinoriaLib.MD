# Linoria UI Library Documentation

## Initial Setup
```lua:setup.lua
local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
```

## Window Creation
```lua:window.lua
local Window = Library:CreateWindow({
    Title = 'Example menu',
    Center = true,
    AutoShow = true,
})
```

## Core Components

### Tabs
```lua:tabs.lua
local Tabs = {
    Main = Window:AddTab('Main'),
    Settings = Window:AddTab('UI Settings'),
}
```

### Groupboxes
```lua:groupbox.lua
local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Groupbox')
```

## UI Elements

### Toggles
```lua:elements/toggle.lua
LeftGroupBox:AddToggle('MyToggle', {
    Text = 'This is a toggle',
    Default = true,
    Tooltip = 'This is a tooltip',
    Callback = function(Value)
        print(Value)
    end
})
```

### Buttons
```lua:elements/button.lua
local MyButton = LeftGroupBox:AddButton({
    Text = 'Button',
    Func = function()
        print('Clicked!')
    end,
    DoubleClick = false,
    Tooltip = 'Button tooltip'
})
```

### Sliders
```lua:elements/slider.lua
LeftGroupBox:AddSlider('MySlider', {
    Text = 'Slider',
    Default = 0,
    Min = 0,
    Max = 5,
    Rounding = 1,
    Compact = false
})
```
With callback function:
```lua
LeftGroupBox:AddSlider('MySlider', {
    Text = 'Slider',
    Default = 0,
    Min = 0,
    Max = 5,
    Rounding = 1,
    Compact = false
    Callback = function(Value)
        print(Value)
})
```


### Notifications
Change 2 with the ammount of time the notification will last
```lua:elements/Notification.lua
Library:Notify("Complete!", 2) 
```

### Dropdowns
```lua:elements/dropdown.lua
LeftGroupBox:AddDropdown('MyDropdown', {
    Values = { 'Option 1', 'Option 2', 'Option 3' },
    Default = 1,
    Multi = false,
    Text = 'Dropdown',
    Tooltip = 'Dropdown tooltip'
})
```

### Color Pickers
```lua:elements/colorpicker.lua
LeftGroupBox:AddLabel('Color'):AddColorPicker('ColorPicker', {
    Default = Color3.new(0, 1, 0),
    Title = 'Color Picker'
})
```

### Keybinds
```lua:elements/keybind.lua
LeftGroupBox:AddLabel('Keybind'):AddKeyPicker('KeyPicker', {
    Default = 'MB2',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Keybind'
})
```

## Save Management
```lua:save_management.lua
SaveManager:SetFolder('MyScriptHub/specific-game')
SaveManager:BuildConfigSection(Tabs['UI Settings'])
SaveManager:LoadAutoloadConfig()
```
## Menu Bind
```lua:Menubind.lua
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { 
    Default = 'End', 
    NoUI = true, 
    Text = 'Menu keybind' 
})

Library.ToggleKeybind = Options.MenuKeybind
```
## Unload button
```lua
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
MenuGroup:AddButton('Unload UI', function() 
    Library:Unload() 
end)

-- Optional
Library:OnUnload(function()
    print('UI has been unloaded!')
    Library.Unloaded = true
end)
```

## Theme Management
```lua:theme_management.lua
ThemeManager:SetFolder('MyScriptHub')
ThemeManager:ApplyToTab(Tabs['UI Settings'])
```

## Additional Features
- Watermark customization
- UI visibility toggling
- Notification system
- Auto-save configurations
- Theme presets
