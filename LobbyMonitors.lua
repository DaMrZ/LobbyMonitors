--Loading in the bigfont API
local bf = require("bigfont")
--Declaring where the monitors will be
local m = peripheral.wrap("back")

--Obtaining the label of the computer to confirm which function to run
local lobby = os.getComputerLabel()
if lobby == "LobbyEast" then
    Write("Monitor Lobby East has been detected")
    LobbyEast
end
if lobby == "LobbyWest" then
    Write("Monitor Lobby West has been detected")
    LobbyWest
elseif lobby == "LobbyNorth" then
    Write("Monitor Lobby North has been detected")
    LobbyNorth
elseif lobby == "LobbySouth" then
    Write("Monitor Lobby Soth has been detected")
    LobbySouth
else
    Write("Orientation has not been found. Please set the label correctly")
end

function mWrite(color,size,x,y,text)
    m.setTextColor(color)
    m.setTextScale(size)
    m.setCursorPos(x,y)
    m.write(text)
end

function LobbyEast()
    m.clear()
    m.setTextColor(colors.green)
    bf.writeOn(m,1,"Portal Hall")
    mWrite(colors.blue,1,4,10,"Where all the Portalling happens")
end

function LobbyWest()

end

function LobbyNorth()

end

function LobbySouth()

end