/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 30D0609B
/// @DnDArgument : "var" "x"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "100"
if(!(x < 100))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C02D303
	/// @DnDParent : 30D0609B
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "1100"
	if(!(x > 1100))
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 0C7C6070
		/// @DnDParent : 5C02D303
		/// @DnDArgument : "color" "$FF000000"
		/// @DnDArgument : "alpha" "false"
		draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 3A0ECDAA
		/// @DnDParent : 5C02D303
		/// @DnDArgument : "code" "draw_roundrect_ext(x,y,x+40,y+40,5,5,false)"
		draw_roundrect_ext(x,y,x+40,y+40,5,5,false)
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 6034A1AC
		/// @DnDParent : 5C02D303
		/// @DnDArgument : "color" "renderColour"
		/// @DnDArgument : "alpha" "false"
		draw_set_colour(renderColour & $ffffff);draw_set_alpha(1);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 2DDD99D5
		/// @DnDParent : 5C02D303
		/// @DnDArgument : "code" "draw_roundrect_ext(x+2,y+2,x+38,y+38,5,5,false)"
		draw_roundrect_ext(x+2,y+2,x+38,y+38,5,5,false)
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 31AEF654
		/// @DnDParent : 5C02D303
		/// @DnDArgument : "x" "8"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "8"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" ".4"
		/// @DnDArgument : "yscale" ".4"
		/// @DnDArgument : "sprite" "sp_downloadIcon"
		/// @DnDArgument : "col" "$FF000000"
		/// @DnDSaveInfo : "sprite" "sp_downloadIcon"
		draw_sprite_ext(sp_downloadIcon, 0, x + 8, y + 8, .4, .4, 0, $FF000000 & $ffffff, 1);
	}
}