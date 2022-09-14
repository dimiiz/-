local ui = setupUI([[
Panel
  height:2000
  width: 2000

  Label
    id: bossName
    text: None
    font: verdana-11px-rounded
    text-horizontal-auto-resize: true
    color: red
    text-align: center
  Label
    id: bossOutfit
    text: None
    font: verdana-11px-rounded
    text-horizontal-auto-resize: true
    color: red
  ProgressBar
    id: percent
    background-color: white
    text: 100%
    width: 160
    margin-right: 5

    ]], modules.game_interface.getMapPanel())


macro(1, function()
if not g_game.isAttacking() then
 ui:hide()

elseif g_game.isAttacking() then
  ui:show()
  --- get attacking creature name
   local mob = g_game.getAttackingCreature()
   ui.bossName:setText("Name: ".. mob:getName())

  --- get attacking creature health percent
   local monsterHP = mob:getHealthPercent()
   ui.percent:setText(monsterHP.."%")
   ui.percent:setPercent(monsterHP)
   ui.percent:setFont("terminus-14px-bold")

  --- get the outfit --
    ui.bossOutfit:setText("Outfit: ".. mob:getOutfit().type)
    ui.bossOutfit:setColor("yellow")

  if monsterHP == 100 then 
    ui.percent:setBackgroundColor("white")
   elseif monsterHP > 75 then
    ui.percent:setBackgroundColor("green")
   elseif monsterHP > 50 then
    ui.percent:setBackgroundColor("yellow")
   elseif monsterHP > 25 then
    ui.percent:setBackgroundColor("orange")
   elseif monsterHP > 1 then
    ui.percent:setBackgroundColor("red")
  end
 end
end)  


g_ui.getRootWidget():recursiveGetChildById("bossName"):setPosition({x = 850, y = 105})
g_ui.getRootWidget():recursiveGetChildById("percent"):setPosition({x = 850, y = 120})
g_ui.getRootWidget():recursiveGetChildById("bossOutfit"):setPosition({x = 895, y = 140})