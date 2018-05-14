# vrp_fishing

Press F1 to start
When graphic is green hit enter

#vrp
Add group fisher to work

Randomly gives reward that will need to be added to items in vrp

```lua
local randomFish = math.random(1,5)
	if randomFish == 2 or randomFish == 4 then
		vRP.giveInventoryItem({user_id,"bass",1})
	else
		vRP.giveInventoryItem({user_id,"catfish",1})
	end
```

This is not completely mine i modified to for my needs. 
