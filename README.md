<h1>SAMP-styled dialogs for FiveM.</h1>
<p>SampDialogs brings user-interface similar to SAMP.</p>
<p>Available types of dialogs:</p>

* Message Box
* List
* Input
* Password Input

<p>You can of course type a title, text, button/item text and placeholder text for inputs.</p>
<p>You can also add more than 2 buttons to the dialog.</p>

<h2>In future updates I will work on the list. It needs to look better.</h2>

<h3>Example how to trigger show dialog event for player (from server):</h3>

```
TriggerClientEvent("dialog:open", source, {
        id = 0,
        type = "msgbox",
        title = "Message Box",
        text = "Message.\nPlease take an action.",
        buttons = { "Option 1", "Option 2", "Option 3", "Option 4", "Option 5" }
})
```

<h3>Server dialog response:</h3>

```
RegisterNetEvent("dialog:response", function(id, value, input)
    print(("Dialog %d | value=%s | input=%s | From player %s"):format(
        id,
        tostring(value), --[[ Value: clicked button ]]
        tostring(input), --[[ Typed input ]]
        GetPlayerName(source)
    ))
end)
```

<h2>Screenshots:</h2>

<img width="1920" height="1080" alt="1" src="https://github.com/user-attachments/assets/9b05e8d0-c151-4778-ac25-1acfc6624075" />
<img width="1920" height="1080" alt="2" src="https://github.com/user-attachments/assets/3c47c3b2-cfb3-4ba1-a246-71834da4544e" />
<img width="1920" height="1080" alt="3" src="https://github.com/user-attachments/assets/9d0adcdb-5456-4271-9630-dd4cba14f409" />
<img width="1920" height="1080" alt="4" src="https://github.com/user-attachments/assets/7fcc70e7-c475-47e9-9dd8-f0422d82ae29" />
<img width="1920" height="1080" alt="5" src="https://github.com/user-attachments/assets/c9994fcb-bec4-4b44-a2ac-eeec419fc84f" />
<img width="1920" height="1080" alt="6" src="https://github.com/user-attachments/assets/83d65be5-0e18-4831-8c63-03587c6d1c3e" />
<img width="1920" height="1080" alt="7" src="https://github.com/user-attachments/assets/391cb559-f73a-42eb-a225-1003ffebb4d2" />
<img width="1920" height="1080" alt="8" src="https://github.com/user-attachments/assets/5ab31451-4ed6-4cd9-b086-a7cc7df536ca" />
