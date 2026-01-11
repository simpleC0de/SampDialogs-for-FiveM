RegisterCommand("msgbox", function(source)
    TriggerClientEvent("dialog:open", source, {
        id = 0,
        type = "msgbox",
        title = "Message Box",
        text = "Hello from message box."
    })
end, false)
RegisterCommand("list", function(source)
    TriggerClientEvent("dialog:open", source, {
        id = 1,
        type = "list",
        title = "List",
        text = "Hello from list.",
        options = { "Item 1", "Item 2", "Item 3" }
    })
end, false)
RegisterCommand("input", function(source)
    TriggerClientEvent("dialog:open", source, {
        id = 2,
        type = "input",
        title = "List",
        text = "Hello from input box.",
    })
end, false)
RegisterCommand("password", function(source)
    TriggerClientEvent("dialog:open", source, {
        id = 3,
        type = "password",
        title = "Password input",
        text = "Hello from password input.",
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
