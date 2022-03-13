local apicheck = fs.exists("bigfont")
local scriptcheck = fs.exists("LobbyMonitors.lua")
if apicheck == false then
    pastebin get 3LfWxRWh bigfont
elseif scriptcheck == false then
    wget https://raw.githubusercontent.com/DaMrZ/LobbyMonitors/main/LobbyMonitors.lua LobbyMonitors.lua
else
    shell.run("LobbyMonitors.lua")
end