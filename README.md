# SAMP-styled Dialogs for FiveM

SAMP-styled dialog UI system for FiveM with support for message boxes, lists, input fields, password inputs, and multi-input dialogs.

## Dialog Types

- **Message Box** - Simple notification with custom buttons
- **List** - Scrollable list selection
- **Input** - Text input field
- **Password** - Masked password input
- **Multi-Input** - Two input fields in one dialog

## Quick Start

```lua
-- Open a message box
TriggerClientEvent("dialog:open", playerId, {
    id = 0,
    type = "msgbox",
    title = "Title",
    text = "Message text",
    buttons = { "OK" }
})

-- Open a list
TriggerClientEvent("dialog:open", playerId, {
    id = 1,
    type = "list",
    title = "Choose",
    text = "Select an item",
    options = { "Item 1", "Item 2", "Item 3" },
    buttons = { "Choose", "Cancel" }
})

-- Handle response
RegisterNetEvent("dialog:response")
AddEventHandler("dialog:response", function(id, value, input, input2)
    local src = source
    print("Dialog " .. id .. " - Button: " .. value)
    if input then print("Input: " .. input) end
end)
```

## Features

- Responsive dialog system
- Sound feedback (configurable)
- Keyboard and mouse support
- Scrollable lists with auto-scroll
- Multiple input support
- Clean SAMP-style UI

[Full Documentation](https://youtu.be/NMkGZagmC0U)