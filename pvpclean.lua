setDefaultTab("Main")

local pvpclean = macro (1, "PvP - Clean Mode", function() end)

  onAddThing(function(tile, thing)
    if (thing:isEffect() or thing:isMissile()) and pvpclean.isOn() then
        thing:hide()
    end
  end)

  onStaticText(function(thing, text)
    if not text:find('says:') and pvpclean.isOn() then
        g_map.cleanTexts()
    end
  end)