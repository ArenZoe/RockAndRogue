/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7AF34F92
/// @DnDArgument : "var" "x"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "100"
if(!(x < 100))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75F76C0F
	/// @DnDParent : 7AF34F92
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "1000"
	if(!(x > 1000))
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 4A6FB8BC
		/// @DnDParent : 75F76C0F
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" ".444"
		/// @DnDArgument : "yscale" ".444"
		/// @DnDArgument : "alpha" ".6"
		/// @DnDArgument : "sprite" "sp_roundedRect"
		/// @DnDArgument : "col" "$FFFFFFFF"
		/// @DnDSaveInfo : "sprite" "sp_roundedRect"
		draw_sprite_ext(sp_roundedRect, 0, x + 0, y + 0, .444, .444, 0, $FFFFFFFF & $ffffff, .6);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 02FDF33E
		/// @DnDParent : 75F76C0F
		/// @DnDArgument : "color" "$FF000000"
		draw_set_colour($FF000000 & $ffffff);
		var l02FDF33E_0=($FF000000 >> 24);
		draw_set_alpha(l02FDF33E_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Ellipse
		/// @DnDVersion : 1
		/// @DnDHash : 2DE106BC
		/// @DnDDisabled : 1
		/// @DnDParent : 75F76C0F
		/// @DnDArgument : "x1" "80"
		/// @DnDArgument : "x1_relative" "1"
		/// @DnDArgument : "y1" "20"
		/// @DnDArgument : "y1_relative" "1"
		/// @DnDArgument : "x2" "160"
		/// @DnDArgument : "x2_relative" "1"
		/// @DnDArgument : "y2" "100"
		/// @DnDArgument : "y2_relative" "1"
		/// @DnDArgument : "fill" "1"
	
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 20FB2E77
		/// @DnDParent : 75F76C0F
		/// @DnDArgument : "x" "80"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "20"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "80 / sprite_get_width(poolIcon)"
		/// @DnDArgument : "yscale" "80 / sprite_get_height(poolIcon)"
		/// @DnDArgument : "sprite" "poolIcon"
		draw_sprite_ext(poolIcon, 0, x + 80, y + 20, 80 / sprite_get_width(poolIcon), 80 / sprite_get_height(poolIcon), 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 6C21919B
		/// @DnDParent : 75F76C0F
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Font
		/// @DnDVersion : 1
		/// @DnDHash : 02E31B44
		/// @DnDParent : 75F76C0F
		/// @DnDArgument : "font" "f_ssFont"
		/// @DnDSaveInfo : "font" "f_ssFont"
		draw_set_font(f_ssFont);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 21D60D15
		/// @DnDParent : 75F76C0F
		/// @DnDArgument : "code" "draw_text_ext(x+120,y+110,string_copy(poolTitle,0,35),15,200)"
		draw_text_ext(x+120,y+110,string_copy(poolTitle,0,35),15,200)
	
		/// @DnDAction : YoYo Games.Drawing.Set_Font
		/// @DnDVersion : 1
		/// @DnDHash : 728EBAFD
		/// @DnDParent : 75F76C0F
		/// @DnDArgument : "font" "f_ssFontSmall"
		/// @DnDSaveInfo : "font" "f_ssFontSmall"
		draw_set_font(f_ssFontSmall);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 366ADCFA
		/// @DnDParent : 75F76C0F
		/// @DnDArgument : "code" "draw_text_ext(x+120,y+150,string_copy(poolDesc,0,70),15,200)$(13_10)"
		draw_text_ext(x+120,y+150,string_copy(poolDesc,0,70),15,200)
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 2F5F33D5
		/// @DnDParent : 75F76C0F
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Line
		/// @DnDVersion : 1
		/// @DnDHash : 2465D7CC
		/// @DnDParent : 75F76C0F
		/// @DnDArgument : "x1" "20"
		/// @DnDArgument : "x1_relative" "1"
		/// @DnDArgument : "y1" "270"
		/// @DnDArgument : "y1_relative" "1"
		/// @DnDArgument : "x2" "220"
		/// @DnDArgument : "x2_relative" "1"
		/// @DnDArgument : "y2" "270"
		/// @DnDArgument : "y2_relative" "1"
		draw_line(x + 20, y + 270, x + 220, y + 270);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 36983053
		/// @DnDParent : 75F76C0F
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "280"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "0.4"
		/// @DnDArgument : "yscale" "0.4"
		/// @DnDArgument : "sprite" "sp_currencyIcon"
		/// @DnDArgument : "col" "$FF08B53A"
		/// @DnDSaveInfo : "sprite" "sp_currencyIcon"
		draw_sprite_ext(sp_currencyIcon, 0, x + 20, y + 280, 0.4, 0.4, 0, $FF08B53A & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 2AAB88F1
		/// @DnDParent : 75F76C0F
		/// @DnDArgument : "x" "110"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "280"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "0.4"
		/// @DnDArgument : "yscale" "0.4"
		/// @DnDArgument : "sprite" "sp_difficultyIcon"
		/// @DnDSaveInfo : "sprite" "sp_difficultyIcon"
		draw_sprite_ext(sp_difficultyIcon, 0, x + 110, y + 280, 0.4, 0.4, 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Font
		/// @DnDVersion : 1
		/// @DnDHash : 3AA3FF62
		/// @DnDParent : 75F76C0F
		/// @DnDArgument : "font" "f_ssFont"
		/// @DnDSaveInfo : "font" "f_ssFont"
		draw_set_font(f_ssFont);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 517E5D45
		/// @DnDParent : 75F76C0F
		/// @DnDArgument : "x" "50"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "285"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "caption" "poolCurrency"
		draw_text(x + 50, y + 285, string(poolCurrency) + "");
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 4F3779B9
		/// @DnDParent : 75F76C0F
		/// @DnDArgument : "code" "draw_text_ext(x+140,y+285,string_copy(poolDifficulty,0,6),0,200)$(13_10)"
		draw_text_ext(x+140,y+285,string_copy(poolDifficulty,0,6),0,200)
	}
}