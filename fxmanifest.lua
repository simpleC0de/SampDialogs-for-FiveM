fx_version 'cerulean'
game 'gta5'

author "Stavski78"
description "SAMP-styled dialogs for FiveM"
version "1.2"

ui_page 'html/index.html'

client_scripts {
    "client.lua",
    "config.lua"
}
server_script 'server.lua'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}