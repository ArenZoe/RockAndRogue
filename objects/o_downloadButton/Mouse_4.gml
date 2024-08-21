/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E5357D2
/// @DnDArgument : "var" "x"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "100"
if(!(x < 100))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50890B43
	/// @DnDParent : 0E5357D2
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "1100"
	if(!(x > 1100))
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 501906E2
		/// @DnDParent : 50890B43
		/// @DnDArgument : "code" "url_open(downloadButtonLink);"
		url_open(downloadButtonLink);
	}
}