function playerOwnsRevive()
{
	for (var i=0;i<array_length(global.jokerInventory);i++)
	{
		if (global.jokerInventory[i] = global.jokers.revive)
		{
			return true;	
		}
	}
	return false;
}

function starCalculation() 
{
	if(global.playData.players[0].stars >= global.nextStars)
	{
		// spawn this one if enough stars
		instance_create_layer(944, 592, "Instances", o_continueResultsButton);
	}
	
	else
	{
		//check for revive joker
		if playerOwnsRevive()
		{
			global.playedSongsData[(array_length(global.playedSongsData)-1)].money = 0;
			instance_create_layer(944, 592, "Instances", o_continueResultsButton);
			o_continueResultsButton.label = "Revive";
			for (var i=0;i<array_length(global.jokerInventory);i++)
			{
				if (global.jokerInventory[i] = global.jokers.revive)
				{
					array_delete(global.jokerInventory,i,1);
					with (o_InventoryPanel){event_user(1);}
				}
			}
			exit;
		}
		
		//otherwise spawn this one
		instance_create_layer(944, 592, "Instances", o_endResultsButton);
	}
}