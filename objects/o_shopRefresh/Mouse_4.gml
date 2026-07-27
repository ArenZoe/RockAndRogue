if(global.gameMoney >= modifiedShopRefreshCost)
{
	global.gameMoney += -modifiedShopRefreshCost;
	global.runStats.shopRerolls += +1;

	global.shopRefreshCost += +1;

	global.shopInventory = [];

	global.shopInventoryItems = [];

	var notif = instance_create_layer(400,125,"PopupLayer",o_popupInt);
	notif.popupLabel = -modifiedShopRefreshCost;

	with(o_panelShop) instance_destroy();

	instance_create_layer(304, 160, "Instances", o_panelShop);
}

else
{
	show_debug_message(string("Not enough moneys :("));
}