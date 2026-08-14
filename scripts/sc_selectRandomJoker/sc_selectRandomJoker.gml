function selectRandomJoker(availableJokers,recursiveDepth) 
{
	
	if (recursiveDepth>8){return "nullJoker";}
	if (array_contains(availableJokers,"instantReplay"))
	{
		if (array_length(global.jokerInventory) = 0)
		{
				array_delete(availableJokers,array_get_index(availableJokers,"instantReplay"),1);
				show_debug_message("instant replay removed due to no inventory");
		}
		
		var inventoryHasDuplicates = false;
		for (var i=0;i<array_length(global.jokerInventory);i++)
		{
			var firstCopy = global.jokerInventory[i];
			for (var j=i+1;j<array_length(global.jokerInventory);j++)
			{
				if (global.jokerInventory[j] = firstCopy) {inventoryHasDuplicates = true;}
			}
		}
		
		if inventoryHasDuplicates
		{
			array_delete(availableJokers,array_get_index(availableJokers,"instantReplay"),1);
			show_debug_message("instant replay removed due to duplicates");	
		}
	}
	//check for charter variety
	if (array_contains(availableJokers,"back2back"))
		{
		var uniqueCharters = [];
		for (var i=0;i<array_length(global.pack.songs);i++)
		{
			if (!array_contains(uniqueCharters,global.pack.songs[i].charter))
			{
				array_push(uniqueCharters,global.pack.songs[i].charter)
			}
		}
		if (array_length(uniqueCharters) < 8)
		{
			array_delete(availableJokers,array_get_index(availableJokers,"back2back"),1);
			show_debug_message("back2back removed due to lack of charter variety in current pack");	
		}
	}
	var availableJokersCommon = [];
	var availableJokersUncommon = [];
	var availableJokersRare = [];
	var availableJokersEpic = [];
	var availableJokersLegendary = [];
	
	
	for (var i=0;i<array_length(availableJokers);i++) //sorting available jokers into rarity buckets
	{
		if (global.jokers[$ availableJokers[i]].rarity = 0)
			{array_push(availableJokersCommon,availableJokers[i]);}
			
		if (global.jokers[$ availableJokers[i]].rarity = 1)
			{array_push(availableJokersUncommon,availableJokers[i]);}
		
		if (global.jokers[$ availableJokers[i]].rarity = 2)
			{array_push(availableJokersRare,availableJokers[i]);}
		
		if (global.jokers[$ availableJokers[i]].rarity = 3)
			{array_push(availableJokersEpic,availableJokers[i]);}
		
		if (global.jokers[$ availableJokers[i]].rarity = 4)
			{array_push(availableJokersLegendary,availableJokers[i]);}
	}
	
	
	var assignedJoker;
	randomize();
	var randomNumber = irandom(24);
	
	if (randomNumber >= 15){
		if (array_length(availableJokersCommon) > 0)
		{
			//choose a random common joker
			assignedJoker = availableJokersCommon[irandom(array_length(availableJokersCommon)-1)];
		}
		else randomNumber = 14;	
	}
	
	if ((randomNumber >= 8) and (randomNumber <= 14)){
		if (array_length(availableJokersUncommon) > 0)
		{
			//choose a random uncommon joker
			assignedJoker = availableJokersUncommon[irandom(array_length(availableJokersUncommon)-1)];
		}
		else randomNumber = 7;	
	}
	
	if ((randomNumber >= 4) and (randomNumber <= 7)){
		if (array_length(availableJokersRare) > 0)
		{
			//choose a random uncommon joker
			assignedJoker = availableJokersRare[irandom(array_length(availableJokersRare)-1)];
		}
		else randomNumber = 3;	
	}
	
	if ((randomNumber >= 1) and (randomNumber <= 3)){
		if (array_length(availableJokersEpic) > 0)
		{
			//choose a random epic joker
			assignedJoker = availableJokersEpic[irandom(array_length(availableJokersEpic)-1)];
		}
		else randomNumber = 0;	
	}
	
	if (randomNumber = 0){
		if (array_length(availableJokersLegendary) > 0)
		{
			//choose a random uncommon joker
			assignedJoker = availableJokersLegendary[irandom(array_length(availableJokersLegendary)-1)];
		}
		else randomNumber = -1;	
	}
	if (randomNumber = -1){
		assignedJoker = selectRandomJoker(availableJokers,recursiveDepth+1);
	}
	
	return assignedJoker;
}