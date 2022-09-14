local autoloot = {}
onTextMessage(function(mode, text)
    if mode == 20 and text:find("You see") then
        local regex = [[You see (?:an|a)([a-z A-Z]*).]]
        local data = regexMatch(text, regex)[1]
        if data and data[2] then
            autoloot.name = data[2]:trim()
        end
    end
end)

modules.game_interface.addMenuHook("category", "Autoloot", function(menuPosition, lookThing, useThing) 
    g_game.look(useThing)
        schedule(500, function()
            if useThing:getCount() < 2 then
                if autoloot.name then
                    say("!autoloot add, "..autoloot.name)
                    modules.game_textmessage.clearMessages()
                    autoloot.name = nil
                end
            else
                warn("autoloot funciona apenas com item com 1 unidade")
            end
        end)    
 end, 

function(menuPosition, lookThing, useThing, creatureThing)
    for _, container in pairs(getContainers()) do
        for _, item in ipairs(container:getItems()) do
                if useThing:getId() == item:getId() then
                    return true
                end         
            
        end
    end
    return false 
end )