/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E1EBD7C
/// @DnDArgument : "var" "global.Position"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "array_length(global.packs) - 3"
if(!(global.Position >= array_length(global.packs) - 3)){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 2E88D30D
	/// @DnDParent : 2E1EBD7C
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "-scrollDirection"
	/// @DnDArgument : "sprite" "sp_scrollArrow"
	/// @DnDArgument : "col" "renderColour"
	/// @DnDSaveInfo : "sprite" "sp_scrollArrow"
	draw_sprite_ext(sp_scrollArrow, 0, x + 0, y + 0, -scrollDirection, 1, 0, renderColour & $ffffff, 1);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 14E72549
else{	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 6FE7752F
	/// @DnDParent : 14E72549
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "-scrollDirection"
	/// @DnDArgument : "sprite" "sp_scrollArrow"
	/// @DnDArgument : "col" "$004C4C4C"
	/// @DnDSaveInfo : "sprite" "sp_scrollArrow"
	draw_sprite_ext(sp_scrollArrow, 0, x + 0, y + 0, -scrollDirection, 1, 0, $004C4C4C & $ffffff, 1);}