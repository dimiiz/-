setDefaultTab("Neox")
macro(1, 'Bug Map', function()
if not g_keyboard.isCtrlPressed() then
	if modules.corelib.g_keyboard.isKeyPressed('Up') then
		checkPos(0, -6)
	elseif modules.corelib.g_keyboard.isKeyPressed('Right') then
		checkPos(6, 0)
	elseif modules.corelib.g_keyboard.isKeyPressed('Down') then
		checkPos(0, 6)
	elseif modules.corelib.g_keyboard.isKeyPressed('Left') then
		checkPos(-6, 0)
	 end
	end
end)
