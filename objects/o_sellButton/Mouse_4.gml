show_debug_message(string("SELL"));

for(var i = 0; i < instance_number(o_joker); i += 1) {
	joker = instance_find(o_joker,i);

	if(joker.selected == true)
	{
		global.gameMoney += joker.sellValue;
		global.runStats.itemsSold += +1;
		
		var notif = instance_create_layer(400,125,"StarLayer",o_popupInt);
		notif.popupLabel = joker.sellValue;
	
		array_delete(global.jokerInventory, joker.index, 1);
	
		with(o_InventoryPanel) {
		event_user(1);
		}
	
		instance_deactivate_object(self);
	}
}

for(var i = 0; i < instance_number(o_consumable); i += 1) {
	item = instance_find(o_consumable,i);

	if(item.selected == true)
	{
		global.gameMoney += item.sellValue;
		
		var notif = instance_create_layer(400,125,"StarLayer",o_popupInt);
		notif.popupLabel = item.sellValue;
	
		array_delete(global.itemsActive, item.index, 1);
	
		array_push(global.itemsActive, false);
	
		array_delete(global.itemInventory, item.index, 1);
	
		with(o_InventoryPanel) {
		event_user(1);
		}
	
		instance_deactivate_object(self);
	
		instance_deactivate_object(o_useButton);
	}
}