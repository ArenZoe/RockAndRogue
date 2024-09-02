/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 11376E8C
/// @DnDArgument : "var" "global.gameMoney"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "price"
if(global.gameMoney >= price)
{
	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 3741C869
	/// @DnDParent : 11376E8C
	/// @DnDArgument : "msg" ""BUY""
	show_debug_message(string("BUY"));

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1AF5136F
	/// @DnDParent : 11376E8C
	/// @DnDArgument : "value" "-price"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "global.gameMoney"
	global.gameMoney += -price;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 005F38AE
else
{
	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 6CA2A955
	/// @DnDParent : 005F38AE
	/// @DnDArgument : "msg" ""Not enough moneys :(""
	show_debug_message(string("Not enough moneys :("));
}