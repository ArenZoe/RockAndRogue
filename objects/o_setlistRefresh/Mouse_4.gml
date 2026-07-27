if(global.gameMoney >= modifiedSetlistRefreshCost)
{
	with(o_panelSetlist) instance_destroy();

	instance_create_layer(640, 32, "Instances", o_panelSetlist);

	global.gameMoney += -modifiedSetlistRefreshCost;
	var notif = instance_create_layer(400,125,"PopupLayer",o_popupInt);
	notif.popupLabel = -modifiedSetlistRefreshCost;

	global.setlistRefreshCost += +1;
	global.jokers.wip.count += +1;
	global.runStats.setlistRerolls += +1;
}

else
{
	show_debug_message(string("Not enough moneys :("));
}