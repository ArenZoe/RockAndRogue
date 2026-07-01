function jokerEval(jokerToEval) 
{
	switch(global.jokerInventory[jokerToEval])
	{
		case global.jokers.vip:
		
		break;
		
		default:
			show_debug_message(string("This one is " + string(global.jokerInventory[jokerToEval].name)));
			show_debug_message("Adding 1 to mult to test");
			global.playData.players[0].avg_multiplier += 1;
		break;
	}
}