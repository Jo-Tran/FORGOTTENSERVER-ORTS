local config = {
	[12545] = {itemId = 12506, storage = Storage.FathersBurdenQuest.Corpse.Scale, text = 'Glitterscale\'s scale.'},
	[12546] = {itemId = 12504, storage = Storage.FathersBurdenQuest.Corpse.Sinew, text = 'Heoni\'s sinew'}
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	local corpse = config[item.itemid]
	if not corpse then
		return true
	end

	local player = Player(cid)
	if player:getStorageValue(corpse.storage) == 1 then
		return false
	end

	player:addItem(corpse.itemId, 1)
	player:setStorageValue(corpse.storage, 1)
	player:say('You acquired ' .. corpse.text, TALKTYPE_MONSTER_SAY)
	return true
end