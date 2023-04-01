function ShowNotification(message, title, type)
    title = title and title or Config.defaultTitle;
    type = type and type or "default";

    if not Config.types[type] then type = "default" end
    SendNuiMessage(json.encode({
        action = "showNotification",
        type = type,
        icon = Config.types[type].icon,
        color = Config.types[type].color,
        enableSound = Config.enableSound,
        sound = Config.types[type].sound,
        title = title,
        message = message,
        time = Config.timeToShow
    }))
end