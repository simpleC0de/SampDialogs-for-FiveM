window.addEventListener("message", (e) => {
    const d = e.data;
    if (d.action !== "open") return;

    const dialog = document.getElementById("dialog");
    const content = document.getElementById("content");

    dialog.hidden = false;
    document.getElementById("title").innerText = d.title;
    document.getElementById("text").innerText = d.text;
    content.innerHTML = "";

    if (d.mode === "list") {
        d.items.forEach((item, i) => {
            let b = document.createElement("button");
            b.innerText = item;
            b.onclick = () => sendResult(i);
            content.appendChild(b);
        });
    }

    if (d.mode === "msgbox") {
        d.buttons.forEach((btn, i) => {
            let b = document.createElement("button");
            b.innerText = btn;
            b.onclick = () => sendResult(i);
            content.appendChild(b);
        });
    }

    if (d.mode === "input") {
        let input = document.createElement("input");
        input.placeholder = d.placeholder || "";
        content.appendChild(input);

        d.buttons.forEach((btn, i) => {
            let b = document.createElement("button");
            b.innerText = btn;
            b.onclick = () => sendResult(i, input.value);
            content.appendChild(b);
        });
    }
    
    if (d.mode === "password") {
        let input = document.createElement("input");
        input.type = "password"
        input.placeholder = d.placeholder || "";
        content.appendChild(input);
        
        d.buttons.forEach((btn, i) => {
            let b = document.createElement("button");
            b.innerText = btn;
            b.onclick = () => sendResult(i, input.value);
            content.appendChild(b);
        });
    }
});

function sendResult(value, input = null) {
    fetch(`https://${GetParentResourceName()}/dialogResult`, {
        method: "POST",
        body: JSON.stringify({ value, input })
    });

    document.getElementById("dialog").hidden = true;
}