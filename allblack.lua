macro(1, function()
  for _, spec in ipairs(getSpectators()) do
    if spec:isPlayer() and spec:getName() ~= player:getName() then
      spec:setMarked("black")
    elseif spec:isMonster() then
      spec:setMarked("red")
    elseif spec:isNpc() then
      spec:setMarked("orange")
end
end
end)  