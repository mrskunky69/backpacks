# m-Backpacks script for QB-Core

| If you are intested in recieving updates join the community on **[Discord](https://discord.gg/svmzYehU8R)**! |

# About
- Optimized
- Many Features
- Full and easy customization
- 0.00ms

# Features
- 3 Backpacks : Small, Medium and Large
- Slots configurable.
- Weight configurable.
- You can only block for one gang.
- You can only block for one job.


# Required
**qb-core/shared/items.lua**
```
	['smallbackpack'] 			= {['name'] = 'smallbackpack', 			['label'] = 'Small Backpack',            	['weight'] = 250,     ['type'] = 'item',      ['image'] = 'smallbackpack.png',         	['unique'] = true,     ['useable'] = true,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = ''},
	['mediumbackpack'] 			= {['name'] = 'mediumbackpack', 		['label'] = 'Medium Backpack',            	['weight'] = 450,     ['type'] = 'item',      ['image'] = 'mediumbackpack.png',         	['unique'] = true,     ['useable'] = true,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = ''},
	['largebackpack'] 			= {['name'] = 'largebackpack', 			['label'] = 'Large Backpack',            	['weight'] = 650,     ['type'] = 'item',      ['image'] = 'largebackpack.png',         	['unique'] = true,     ['useable'] = true,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = ''},
```

**qb-inventory/server/main.lua**

## Search : **elseif QBCore.Shared.SplitStr(fromInventory, "-")[1] == "itemshop" then**

## And put like this: https://media.discordapp.net/attachments/833847269185814568/974831016961249330/unknown.png

```
		elseif itemData.name == 'smallbackpack' then
         	local info = {
		        smallbackpackid = math.random(111,999),
		    }
        Player.Functions.AddItem('smallbackpack', 1, nil, info, {["quality"] = 100})

        elseif itemData.name == 'mediumbackpack' then
         	local info = {
		        mediumbackpackid = math.random(111,999),
		    }
        Player.Functions.AddItem('mediumbackpack', 1, nil, info, {["quality"] = 100})

        elseif itemData.name == 'largebackpack' then
         	local info = {
		        largebackpackid = math.random(111,999),
		    }
        Player.Functions.AddItem('largebackpack', 1, nil, info, {["quality"] = 100})
```