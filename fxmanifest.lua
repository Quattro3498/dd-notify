fx_version 'cerulean'
game 'gta5'

author "Quattro#3498"
description "'Dream Development Notification system [SCRIPT][STANDALONE]"
support 'https://discord.gg/aUsykSKtEz'
version "1.0.0"
lua54 'yes'

client_scripts {
    "client.lua"
}

shared_scripts {
    "config.lua"
}

exports {
    "ShowNotification"
}

ui_page "nui/index.html"

files {
    'nui/index.html',
    'nui/style.css',
    'nui/script.js',
    'nui/sound/*.mp3'
}


escrow_ignore {
    'config.lua'
}