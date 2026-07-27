if(global.gameMoney >= modifiedPrice)
{
	if(!(array_length(global.itemInventory) >= 3))
	{
		show_debug_message(string("BUY"));
	
		array_push(global.itemInventory, global.shopInventoryItems[index]);
	
		show_debug_message(string("added item to inventory"));
	
		with(o_InventoryPanel) {
		event_user(1);
		}
	
		global.gameMoney += -modifiedPrice;
		global.runStats.itemsPurchased += +1;
		
		var notif = instance_create_layer(400,125,"PopupLayer",o_popupInt);
		notif.popupLabel = -modifiedPrice;	
	
		with(itemReference) instance_destroy();
	
		instance_destroy();
	}
}

else
{
	show_debug_message(string("Not enough moneys :("));
}