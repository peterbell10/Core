function HandleMeCommand( Split, Player )

	table.remove( Split, 1 )
	local Message = ""

	for i, Text in ipairs( Split ) do
		Message = Message .. " " .. Text
	end

	if Split[1] == nil then
		SendMessage( Player, "Usage: /me <action>" )
		return true
	end

	if Split[1] ~= nil then
		cRoot:Get():BroadcastChat( Player:GetName() .. "" .. Message )
		return true
	end

end
