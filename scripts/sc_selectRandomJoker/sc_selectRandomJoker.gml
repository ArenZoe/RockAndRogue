function selectRandomJoker(availableJokers) 
{
	
	if (array_length(global.jokerInventory) = 0)
	{
		if (array_contains(availableJokers,"instantReplay"))
		{
			array_delete(availableJokers,array_get_index(availableJokers,"instantReplay"),1);
			show_debug_message("removed instant replay from pool");
		}
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
		show_debug_message("instant replay denied due to duplicates");	
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
		assignedJoker = selectRandomJoker(availableJokers);
	}
	
	return assignedJoker;
}