/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 07E3BEFA
/// @DnDArgument : "var" "x"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "100"
if(!(x < 100))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D19E8B2
	/// @DnDParent : 07E3BEFA
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "1100"
	if(!(x > 1100))
	{
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 0D12FE47
		/// @DnDParent : 7D19E8B2
		/// @DnDArgument : "msg" ""You picked pack with id: " + buttonPackID"
		show_debug_message(string("You picked pack with id: " + buttonPackID));
	}
}