RegisterCommand("msgbox", function(source)
    TriggerClientEvent("dialog:open", source, {
        id = 0,
        type = "msgbox",
        title = "Message Box",
        text = "Message.\nPlease take an action.",
        buttons = { "Option 1", "Option 2", "Option 3", "Option 4", "Option 5" }
    })
end, false)
RegisterCommand("list", function(source)
    TriggerClientEvent("dialog:open", source, {
        id = 1,
        type = "list",
        title = "Weapon Shop",
        text = "",
        options = { "Pistol [$500]", "Uzi [$750]", "AK-47 [$1250]", "Purchase", "Cancel"}
    })
end, false)
RegisterCommand("input", function(source)
    TriggerClientEvent("dialog:open", source, {
        id = 2,
        type = "input",
        title = "Input",
        text = "Inputbox:",
    })
end, false)
RegisterCommand("password", function(source)
    TriggerClientEvent("dialog:open", source, {
        id = 3,
        type = "password",
        title = "Enter your password",
        text = "Please enter your password.\n\nIf you forgot your password, please select Help.",
        buttons = { "Log In", "Cancel", "Help" }
    })
end, false)

RegisterNetEvent("dialog:response", function(id, value, input)
    print(("Dialog %d | value=%s | input=%s | From player %s"):format(
        id,
        tostring(value),
        tostring(input),
        GetPlayerName(source)
    ))
end)