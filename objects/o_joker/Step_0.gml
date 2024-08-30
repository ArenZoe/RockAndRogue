/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28B9C02A
/// @DnDArgument : "var" "showDesc"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "showDescCap"
if(showDesc < showDescCap)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7738BB17
	/// @DnDParent : 28B9C02A
	/// @DnDArgument : "var" "showDesc"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "op" "1"
	if(!(showDesc < 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53CCEA9C
		/// @DnDParent : 7738BB17
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "showDesc"
		showDesc += -1;
	}
}