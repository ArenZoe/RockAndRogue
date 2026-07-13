image_xscale = 4.75;
image_yscale = 8.25;

image_blend = $C8343434 & $ffffff;
image_alpha = ($C8343434 >> 24) / $ff;

// global.shopInventory = [global.jokers.testJoker1,global.jokers.testJoker2,global.jokers.testJoker3,global.jokers.testJoker4];
// global.shopInventoryItems = [global.items.testItem1,global.items.testItem2,global.items.testItem3];

global.shopInventory = [];
global.shopInventoryItems = [];
var availableJokers = [];
var availableItems = [];
availableJokers = struct_get_names(global.jokers);
availableItems = struct_get_names(global.items);

//delete inventory jokers from available list

for (var i = 0; i < array_length(availableJokers); i++){
	if (array_contains(global.jokerInventory,global.jokers[$ availableJokers[i]])){
		array_delete(availableJokers, i, 1);
		i--;
	}
}

//delete inventory itemss from available list

for (var i = 0; i < array_length(availableItems); i++){
	if (array_contains(global.itemInventory,global.items[$ availableItems[i]])){
		array_delete(availableItems, i, 1);
		i--;
	}
}


for (var i = 0; i < 4; i++){
	//choose random joker from available list
	var randomJoker = selectRandomJoker(availableJokers);

	//then add to shop inv and remove from available
	array_push(global.shopInventory,global.jokers[$ randomJoker]);
	array_delete(availableJokers,array_get_index(availableJokers,randomJoker),1);
	
	
}

for (var i = 0; i < 3; i++){
	//choose random item from available list
	var randomItem = irandom(array_length(availableItems)-1);
	
	//then add to shop inv and remove from available
	array_push(global.shopInventoryItems,global.items[$ availableItems[randomItem]]);
	array_delete(availableItems,randomItem,1);
	
	
}

for(i = 0; i < array_length(global.shopInventoryItems); i += 1) {
	newItem = instance_create_layer(x + 56 + (i * 96), y + 344, "Inventory", o_consumable);

	newItem.inShop = true;
	newItem.name = global.shopInventoryItems[i].name;
	newItem.description = global.shopInventoryItems[i].description;
	newItem.buyValue = global.shopInventoryItems[i].buyValue;
	newItem.sellValue = global.shopInventoryItems[i].sellValue;
	newItem.icon = global.shopInventoryItems[i].icon;
	newItem.sprite_index = newItem.icon;

	newItemButton = instance_create_layer(x + 32 + (i * 96), y + 384, "Buttons", o_buyConsumableButton);

	newItemButton.index = i;

	newItemButton.price = newItem.buyValue;
	newItemButton.itemReference = newItem;
}

for(i = 0; i < array_length(global.shopInventory); i += 1) {
	newJoker = instance_create_layer(x + 184, y + 64 * (i +1) + 24, "Inventory", o_joker);

	newJoker.inShop = true;
	newJoker.name = global.shopInventory[i].name;
	newJoker.description = global.shopInventory[i].description;
	newJoker.buyValue = global.shopInventory[i].buyValue;
	newJoker.sellValue = global.shopInventory[i].sellValue;
	newJoker.icon = global.shopInventory[i].icon;
	newJoker.sprite_index = newJoker.icon;
	newJoker.rarity = global.shopInventory[i].rarity;
	newJoker.type = global.shopInventory[i].type;
	newJoker.jokerID = global.shopInventory[i];

	newJokerButton = instance_create_layer(x + 16, y + 64 * (i +1), "Buttons", o_buyJokerButton);

	newJokerButton.index = i;

	newJokerButton.price = newJoker.buyValue;
	newJokerButton.jokerReference = newJoker;
}

instance_create_layer(464, 608, "Buttons", o_setlistRefresh);

instance_create_layer(320, 608, "Buttons", o_shopRefresh);