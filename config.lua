Config = {
    timeToShow = 4, --sec
    defaultTitle = "Notification",
    enableSound = true,
    types = {
        ["default"] = {
            icon = "far fa-bell",
            color = "#931fd6",
            sound = "default",
        },
        ["danger"] = {
            icon = "fas fa-exclamation-triangle",
            color = "red",
            sound = "danger",
        },
        ["success"] = {
            icon = "fas fa-check",
            color = "#4eff9e",
            sound = "default",
        },
        ["money"] = {
            icon = "fas fa-coins",
            color = "#fffb00",
            sound = "money",
        },
        ["info"] = {
            icon = "fas fa-info-circle",
            color = "#a8a8a8",
            sound = "default",
        },
    }
}