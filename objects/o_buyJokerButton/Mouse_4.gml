if(global.gameMoney >= modifiedPrice)
{
	if(!(array_length(global.jokerInventory) >= 5))
	{
		show_debug_message(string("BUY"));
		
		array_push(global.jokerInventory, global.shopInventory[index]);
		
		show_debug_message(string("added joker to inventory"));
		
		//check for instant replay
		if (array_length(global.jokerInventory) > 1) //skip copy jokers if they're the only joker owned
		{
			//instant replay logic
			if (global.jokerInventory[array_length(global.jokerInventory)-1] = global.jokers.instantReplay)
			{
				global.jokerInventory[array_length(global.jokerInventory)-1] = global.jokerInventory[array_length(global.jokerInventory)-2];	
			}
			
			
			//copycat logic
			for (var i=0;i<array_length(global.jokerInventory);i++)
			{
				if (global.jokerInventory[i] = global.jokers.copycat)
				{
					global.jokerInventory[i] = global.jokerInventory[array_length(global.jokerInventory)-1]	
				}
			}
		}
		
		
		with(o_InventoryPanel){event_user(1);}
		
		global.gameMoney -= modifiedPrice;
		global.runStats.itemsPurchased += 1;
		
		var notif = instance_create_layer(400,125,"StarLayer",o_popupInt);
		notif.popupLabel = -modifiedPrice;
		
		with(jokerReference) instance_destroy();
		
		instance_destroy();
	}
}

else
{
	show_debug_message(string("Not enough moneys :("));
}