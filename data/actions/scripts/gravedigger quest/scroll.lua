function onUse(cid, item, fromPosition, itemEx, toPosition)
	local player = Player(cid)
	if player:getStorageValue(Storage.GravediggerOfDrefia.Mission53) == 1 and player:getStorageValue(Storage.GravediggerOfDrefia.Mission54) < 1 then
		player:setStorageValue(Storage.GravediggerOfDrefia.Mission54, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Somebody left a card. It says: Looking for the scroll? Come find me. Take the stairs next to the students. Dorm.')
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
	end
	return true
end