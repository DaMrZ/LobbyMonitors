if fs.exists("bigfont") == false then
    pastebin get 3LfWxRWh bigfont
elseif fs.exists("LobbyMonitor.lua") == false then
    wget https://raw.githubusercontent.com/DaMrZ/LobbyMonitors/main/LobbyMonitors.lua LobbyMonitors.lua
else
    shell.run("LobbyMonitors.lua")
end