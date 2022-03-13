--Loading in the bigfont API
local bf = require("bigfont")
--Declaring where the monitors will be
local m = peripheral.wrap("back")

function mWrite(color,size,x,y,text)
    m.setTextColor(color)
    m.setTextScale(size)
    m.setCursorPos(x,y)
    m.write(text)
end

function LobbyWest()
    m.clear()
    m.setTextColor(colors.green)
    bf.writeOn(m,1,"Portal Hall")
    mWrite(colors.blue,1,4,10,"Where all the Portalling happens")
end

function LobbyEast()
    m.clear()
    m.setTextColor(colors.pink)
    bf.writeOn(m,1,"General Area")
    mwrite(colors.blue,1,4,10,"General stuffs and things")
end

function LobbyNorth()
    m.clear()
    m.setTextColor(colors.yellow)
    bf.writeOn(m,1,"North Wing")
    mWrite(colors.blue,1,4,10,"What happens in the north wing?")
end

function LobbySouth()
    m.clear()
    m.setTextColor(colors.purple)
    bf.writeOn(m,1,"Power Hall")
    mWrite(colors.blue,1,4,10,"Where all the generation happens")
end

--Obtaining the label of the computer to confirm which function to run
local lobby = os.getComputerLabel()
if lobby == "LobbyEast" then
    LobbyEast()
end
if lobby == "LobbyWest" then
    LobbyWest()
elseif lobby == "LobbyNorth" then
    LobbyNorth()
else lobby == "LobbySouth" then
    LobbySouth()
end

