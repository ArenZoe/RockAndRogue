function itemEval(itemToEval) 
{
	show_debug_message("This item is " + string(global.itemInventory[itemToEval].name));
	
	switch global.itemInventory[itemToEval]
	{
		case global.items.autoStrum:
			show_debug_message("this item stays active until the results screen");
			self.isActive = !self.isActive;
			global.itemsActive[itemToEval] = !global.itemsActive[itemToEval];
		break;
		
		case global.items.drunk:
			show_debug_message("this item stays active until the results screen");
			self.isActive = !self.isActive;
			global.itemsActive[itemToEval] = !global.itemsActive[itemToEval];
		break;
		
		case global.items.easy:
			var easyNotif = instance_create_layer(400,125,"PopupLayer",o_popupInt);
			easyNotif.popupLabel = -global.gameMoney;
			global.gameMoney *= 0;
			global.nextStars -= 1;
			array_delete(global.itemInventory,itemToEval,1);
			with(o_InventoryPanel){event_user(1);}
			global.runStats.consumablesUsed += 1;
		break;
		
		case global.items.freeMoney:
			global.gameMoney += 5;
			array_delete(global.itemInventory,itemToEval,1);
			with(o_InventoryPanel){event_user(1);}
			global.runStats.consumablesUsed += 1;
			var freeNotif = instance_create_layer(400,125,"PopupLayer",o_popupInt);
			freeNotif.popupLabel = 5;
		break;
		
		case global.items.gamble:
			var gamba = irandom_range(-5, 20);
			global.gameMoney += gamba;
			array_delete(global.itemInventory,itemToEval,1);
			with(o_InventoryPanel){event_user(1);}
			global.runStats.consumablesUsed += 1;
			var gambaNotif = instance_create_layer(400,125,"PopupLayer",o_popupInt);
			gambaNotif.popupLabel = gamba;

		break;
		
		
		case global.items.hard:
			var hardNotif = instance_create_layer(400,125,"PopupLayer",o_popupInt);
			hardNotif.popupLabel = global.gameMoney;
			global.gameMoney *= 2;
			global.nextStars = ceil(global.nextStars * 1.2);
			array_delete(global.itemInventory,itemToEval,1);
			with(o_InventoryPanel){event_user(1);}
			global.runStats.consumablesUsed += 1;
		break;
		
		case global.items.hopos:
			show_debug_message("this item stays active until the results screen");
			self.isActive = !self.isActive;
			global.itemsActive[itemToEval] = !global.itemsActive[itemToEval];
		break;
		
		case global.items.hoposToTaps:
			show_debug_message("this item stays active until the results screen");
			self.isActive = !self.isActive;
			global.itemsActive[itemToEval] = !global.itemsActive[itemToEval];
		break;
		
		case global.items.more:
			array_delete(global.itemInventory,itemToEval,1);
			var availableItems = struct_get_names(global.items);
			var randomItem = irandom(array_length(availableItems)-1);
			array_push(global.itemInventory,global.items[$ availableItems[randomItem]]);
			if (array_length(global.itemInventory) < 3)
			{
				randomItem = irandom(array_length(availableItems)-1);
				array_push(global.itemInventory,global.items[$ availableItems[randomItem]]);
			}
			with(o_InventoryPanel){event_user(1);}
			global.runStats.consumablesUsed += 1;
		break;
		
		case global.items.opens:
			show_debug_message("this item stays active until the results screen");
			self.isActive = !self.isActive;
			global.itemsActive[itemToEval] = !global.itemsActive[itemToEval];
		break;
		
		case global.items.picky:
			show_debug_message("this item stays active until the results screen");
			self.isActive = !self.isActive;
			global.itemsActive[itemToEval] = !global.itemsActive[itemToEval];
		break;
		
		case global.items.setlist:
			array_delete(global.itemInventory,itemToEval,1);
			with(o_InventoryPanel){event_user(1);}
			with(o_panelSetlist) instance_destroy();
			instance_create_layer(640, 32, "Instances", o_panelSetlist);
			global.runStats.setlistRerolls += 1;
			global.runStats.consumablesUsed += 1;
		break;
		
		case global.items.shop:
			global.shopInventory = [];
			global.shopInventoryItems = [];
			array_delete(global.itemInventory,itemToEval,1);
			with(o_InventoryPanel){event_user(1);}
			with(o_panelShop) instance_destroy();
			instance_create_layer(304, 160, "Instances", o_panelShop);
			global.runStats.shopRerolls += 1;
			global.runStats.consumablesUsed += 1;
		break;
		
		case global.items.slow:
			show_debug_message("this item stays active until the results screen");
			self.isActive = !self.isActive;
			global.itemsActive[itemToEval] = !global.itemsActive[itemToEval];
		break;
		
		case global.items.taps:
			show_debug_message("this item stays active until the results screen");
			self.isActive = !self.isActive;
			global.itemsActive[itemToEval] = !global.itemsActive[itemToEval];
		break;
		
		case global.items.mysteryBox:
			if (array_length(global.jokerInventory) < 5)
			{
				var availableJokers = [];
				availableJokers = struct_get_names(global.jokers);
				
				//delete inventory jokers from available list
				for (var i = 0; i < array_length(availableJokers); i++){
					if (array_contains(global.jokerInventory,global.jokers[$ availableJokers[i]])){
						array_delete(availableJokers, i, 1);
						i--;
					}
				}
				//choose a random joker
				var randomJoker = selectRandomJoker(availableJokers,0);
				//then add to inventory and refresh
				array_push(global.jokerInventory,global.jokers[$ randomJoker]);
			}
			array_delete(global.itemInventory,itemToEval,1)
			with(o_InventoryPanel){event_user(1);}
			global.runStats.consumablesUsed += 1;
		break;
		
		default:
			show_debug_message("unimplemented item!");
		break;
	}
	global.jokers.gluttony.count = global.runStats.consumablesUsed;
}