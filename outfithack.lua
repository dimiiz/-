setDefaultTab("Main")

local panelName = "outfit"
local ui = setupUI([[
Panel
  height: 19

  BotSwitch
    id: titleoutfit
    anchors.top: parent.top
    anchors.left: parent.left
    text-align: center
    width: 130
    !text: tr('OUTFIT HACK')

  Button
    id: outfitid
    anchors.top: prev.top
    anchors.left: prev.right
    anchors.right: parent.right
    margin-left: 3
    height: 17
    text: ID
    color: teal

  ]])
  ui:setId(panelName)

  if not storage[panelName] then
  storage[panelName] = {
    enabled = true,
    outfitid = "0",
    outfithack = false,
    findOutfit = false
  }
  end

  local config = storage[panelName]

  ui.titleoutfit:setOn(config.enabled)
  ui.titleoutfit.onClick = function(widget)
  config.enabled = not config.enabled
  widget:setOn(config.enabled)
  end

  ui.outfitid.onClick = function(widget)
    outfitidWindow:show()
    outfitidWindow:raise()
    outfitidWindow:focus()
  end

  rootWidget = g_ui.getRootWidget()
    if rootWidget then

      outfitidWindow = UI.createWindow('outfitidWindow', rootWidget)
      outfitidWindow:hide()

      outfitidWindow.closeButton.onClick = function(widget)
      outfitidWindow:hide()
    end
      outfitidWindow.IDAQUI.onTextChange = function(widget, text)
      config.outfitid = text
    end
   outfitidWindow.IDAQUI:setText(config.outfitid)
 end
       outfitidWindow.findOutfit:setOn(config.findOutfit)
      outfitidWindow.findOutfit.onClick = function(widget)
      config.findOutfit = not config.findOutfit
      widget:setOn(config.findOutfit)
        end

macro(1, function()
if config.enabled then
  if not config.findOutfit then
    if player:getOutfit().type ~= tonumber(config.outfitid) then
      player:setOutfit({type = tonumber(config.outfitid)})
    end
end
end
end)

local tiype = 0
macro(100,function()
  if config.findOutfit then
    tiype = tiype +1
    player:setOutfit({type = tiype})
    outfitidWindow.label2:setText(tiype)
    outfitidWindow.label2:setColor("pink")
end
end)

outfitidWindow.resetButton.onClick = function(widget)
  tiype = 0
  outfitidWindow.label2:setText("start to count!")
  outfitidWindow.label2:setColor("teal")
  player:setOutfit({type = tonumber(config.outfitid)})
end