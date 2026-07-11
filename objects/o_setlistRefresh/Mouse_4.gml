/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E3F3195
/// @DnDArgument : "var" "global.gameMoney"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "modifiedSetlistRefreshCost"
if(global.gameMoney >= modifiedSetlistRefreshCost){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5A0BD058
	/// @DnDApplyTo : {o_panelSetlist}
	/// @DnDParent : 0E3F3195
	with(o_panelSetlist) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 575B7ED9
	/// @DnDParent : 0E3F3195
	/// @DnDArgument : "xpos" "640"
	/// @DnDArgument : "ypos" "32"
	/// @DnDArgument : "objectid" "o_panelSetlist"
	/// @DnDSaveInfo : "objectid" "o_panelSetlist"
	instance_create_layer(640, 32, "Instances", o_panelSetlist);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 79BF509D
	/// @DnDParent : 0E3F3195
	/// @DnDArgument : "value" "-modifiedSetlistRefreshCost"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "global.gameMoney"
	global.gameMoney += -modifiedSetlistRefreshCost;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27A67D23
	/// @DnDInput : 3
	/// @DnDParent : 0E3F3195
	/// @DnDArgument : "expr" "+1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "+1"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "expr_2" "+1"
	/// @DnDArgument : "expr_relative_2" "1"
	/// @DnDArgument : "var" "global.setlistRefreshCost"
	/// @DnDArgument : "var_1" "global.jokers.wip.count"
	/// @DnDArgument : "var_2" "global.runStats.setlistRerolls"
	global.setlistRefreshCost += +1;
	global.jokers.wip.count += +1;
	global.runStats.setlistRerolls += +1;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 308F0115
else{	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 21F2C69A
	/// @DnDParent : 308F0115
	/// @DnDArgument : "msg" ""Not enough moneys :(""
	show_debug_message(string("Not enough moneys :("));}