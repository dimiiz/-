local widget = setupUI([[
Panel
  height:2000
  width: 2000




  Label
    id: blesstext
    height: 12
    color: #FFE4C4
    font: terminus-14px-bold  
    background-color: #00000090
    opacity: 0.87
    text-auto-resize: true
    text-align: center
    ]], modules.game_interface.getMapPanel())



BLESS = "Loading..."

macro(1, "Be Blessed!", function()
  widget.blesstext:setText("BLESS: ".. BLESS)
    if BLESS == "Loading..." then
      say("!bless")
    end
  end)

onTextMessage(function(mode, text)

  local find_msg = "todas as bless" -- msg de bless comprada
  local find_money = "precisa de 10 gold para comprar a bless" -- msg sem dinheiro
        if text:lower():find(find_msg) then
            BLESS = "Blessed"
        elseif text:lower():find(find_money) then
            BLESS = "No Money"    
        end
      end)

g_ui.getRootWidget():recursiveGetChildById("blesstext"):setPosition({x = 10, y = 90})
