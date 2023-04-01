ESX TUTORIAL

To change esx notifications to ours you just need to go to`es_extended\client\functions.lua`, and replace this 
`function ESX.ShowNotification(message, type, length)
    if GetResourceState("esx_notify") ~= "missing" then
        return exports["esx_notify"]:Notify(type, length, message)
    end
    print("[^1ERROR^7] ^5ESX Notify^7 is Missing!")
end`
with this 
`function ESX.ShowNotification(message, type, title)
    exports["dd-notify"]:ShowNotification(message, title, type)
end`


GENERAL USE 

Paste this string by inserting the message and (optionally) title and type
`exports["dd-notify"]:ShowNotification(message, title, type)`

ps. the type must be one of those written in the config, 
    if you don't enter the title, the default one written in the config will be put
    if you don't enter the type, the default will be put 