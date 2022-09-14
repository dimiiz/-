

macro(1, function()
modules.game_bot.contentsPanel.editConfig:hide()

local on = modules.game_bot.contentsPanel.enableButton
on:setFont("terminus-14px-bold")
local edit = modules.game_bot.editWindow
edit:setText("@wful")
edit:setColor("orange")
edit:setFont("terminus-14px-bold")

local qw = modules.game_bot.contentsPanel.config
qw:setText("@wful")
qw:setColor("orange")
qw:setFont("terminus-14px-bold")

local uu = modules.game_bot.botWindow
uu:setText("@wful")
uu:setColor("orange")
uu:setFont("terminus-14px-bold")

local rr = modules.game_bot.contentsPanel.messages 
rr:setColor("orange")
end)
