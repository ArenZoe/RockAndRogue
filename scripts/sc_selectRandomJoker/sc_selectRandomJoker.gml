function selectRandomJoker(availableJokers) 
{
	var availableJokersCommon = [];
	var availableJokersUncommon = [];
	var availableJokersRare = [];
	var availableJokersEpic = [];
	var availableJokersLegendary = [];
	
	
	for (i=0;i<array_length(availableJokers)-1;i++) //sorting available jokers into rarity buckets
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
	var randomNumber = irandom(14);
	
	if (randomNumber >= 10){
		if (array_length(availableJokersCommon) > 0)
		{
			//choose a random common joker
			assignedJoker = availableJokersCommon[irandom(array_length(availableJokersCommon)-1)];
		}
		else randomNumber = 9;	
	}
	
	if ((randomNumber >= 6) and (randomNumber < 10)){
		if (array_length(availableJokersUncommon) > 0)
		{
			//choose a random uncommon joker
			assignedJoker = availableJokersUncommon[irandom(array_length(availableJokersUncommon)-1)];
		}
		else randomNumber = 5;	
	}
	
	if ((randomNumber >= 3) and (randomNumber < 6)){
		if (array_length(availableJokersRare) > 0)
		{
			//choose a random uncommon joker
			assignedJoker = availableJokersRare[irandom(array_length(availableJokersRare)-1)];
		}
		else randomNumber = 2;	
	}
	
	if ((randomNumber = 1) or (randomNumber = 2)){
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
		show_message("error generating random joker, idk blame Aren for coding it bad");
		game_end();
	}
	
	return assignedJoker;
}