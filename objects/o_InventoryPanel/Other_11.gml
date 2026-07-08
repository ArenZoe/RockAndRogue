show_debug_message(string("inventory updated"));

instance_deactivate_object(o_useButton);

instance_deactivate_object(o_sellButton);

instance_deactivate_object(o_sortDown);

instance_deactivate_object(o_sortUp);

with(o_joker) {
	if(self.inShop == false){	instance_destroy();}
}

with(o_consumable) {
	if(self.inShop == false){	instance_destroy();}
}

for(i = 0; i < array_length(global.jokerInventory); i += 1) {	var newJoker = instance_create_layer(x + 120, y + 64 * (i+1) + 24, "Inventory", o_joker);

	newJoker.inShop = false;
	newJoker.name = global.jokerInventory[i].name;
	newJoker.description = global.jokerInventory[i].description;
	newJoker.buyValue = global.jokerInventory[i].buyValue;
	newJoker.sellValue = global.jokerInventory[i].sellValue;
	newJoker.icon = global.jokerInventory[i].icon;
	newJoker.sprite_index = global.jokerInventory[i].icon;
	newJoker.index = i;
	newJoker.type = global.jokerInventory[i].type;
	newJoker.rarity = global.jokerInventory[i].rarity;
	newJoker.count = global.jokerInventory[i].count;

	show_debug_message(string("respawned joker"));}

for(i = 0; i < array_length(global.itemInventory); i += 1) {	var newItem = instance_create_layer(x + 40 + (80 * i), y + 424, "Inventory", o_consumable);

	newItem.inShop = false;
	newItem.name = global.itemInventory[i].name;
	newItem.description = global.itemInventory[i].description;
	newItem.buyValue = global.itemInventory[i].buyValue;
	newItem.sellValue = global.itemInventory[i].sellValue;
	newItem.icon = global.itemInventory[i].icon;
	newItem.sprite_index = newItem.icon;
	newItem.index = i;
	newItem.isActive = global.itemsActive[newItem.index];

	show_debug_message(string("respawned item"));}