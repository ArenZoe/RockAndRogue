/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 53914766
/// @DnDArgument : "var" "global.gameMoney"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "global.shopRefreshCost"
if(global.gameMoney >= global.shopRefreshCost){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 3CA14B3C
	/// @DnDParent : 53914766
	/// @DnDArgument : "msg" ""SHOP REFRESH""
	show_debug_message(string("SHOP REFRESH"));

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 4C39B199
	/// @DnDParent : 53914766
	/// @DnDArgument : "value" "-global.shopRefreshCost"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "global.gameMoney"
	global.gameMoney += -global.shopRefreshCost;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E69E753
	/// @DnDParent : 53914766
	/// @DnDArgument : "expr" "+1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.shopRefreshCost"
	global.shopRefreshCost += +1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 210AB5E6
	/// @DnDApplyTo : {o_panelShop}
	/// @DnDParent : 53914766
	with(o_panelShop) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7CAB798E
	/// @DnDParent : 53914766
	/// @DnDArgument : "xpos" "304"
	/// @DnDArgument : "ypos" "160"
	/// @DnDArgument : "objectid" "o_panelShop"
	/// @DnDSaveInfo : "objectid" "o_panelShop"
	instance_create_layer(304, 160, "Instances", o_panelShop);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7264D0C5
else{	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 3B755B9C
	/// @DnDParent : 7264D0C5
	/// @DnDArgument : "msg" ""Not enough moneys :(""
	show_debug_message(string("Not enough moneys :("));}