function jokerEval(jokerToEval) 
{
	var l3FFFFC2D_0 = global.jokerInventory[jokerToEval];
switch(l3FFFFC2D_0)
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