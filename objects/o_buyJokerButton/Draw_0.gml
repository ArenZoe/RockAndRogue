/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6CA051F9
/// @DnDDisabled : 1
/// @DnDArgument : "var" "x"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "100"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1D1BFEEF
/// @DnDDisabled : 1
/// @DnDParent : 6CA051F9
/// @DnDArgument : "var" "x"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1000"
/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0C7C6070
/// @DnDParent : 1D1BFEEF
/// @DnDArgument : "color" "$FF000000"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3A0ECDAA
/// @DnDParent : 1D1BFEEF
/// @DnDArgument : "code" "draw_roundrect_ext(x,y,x+48,y+48,5,5,false)"
draw_roundrect_ext(x,y,x+48,y+48,5,5,false)

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6034A1AC
/// @DnDParent : 1D1BFEEF
/// @DnDArgument : "color" "renderColour"
/// @DnDArgument : "alpha" "false"
draw_set_colour(renderColour & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 26814020
/// @DnDParent : 1D1BFEEF
/// @DnDArgument : "var" "array_length(global.jokerInventory)"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "5"
if(array_length(global.jokerInventory) >= 5){	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 17BBA708
	/// @DnDParent : 26814020
	/// @DnDArgument : "color" "$FF333333"
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FF333333 & $ffffff);draw_set_alpha(1);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12083984
/// @DnDParent : 1D1BFEEF
/// @DnDArgument : "var" "price"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "global.gameMoney"
if(price > global.gameMoney){	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 22092492
	/// @DnDParent : 12083984
	/// @DnDArgument : "color" "$FF333333"
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FF333333 & $ffffff);draw_set_alpha(1);}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2DDD99D5
/// @DnDParent : 1D1BFEEF
/// @DnDArgument : "code" "draw_roundrect_ext(x+2,y+2,x+46,y+46,5,5,false)"
draw_roundrect_ext(x+2,y+2,x+46,y+46,5,5,false)

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5EBCDC1B
/// @DnDParent : 1D1BFEEF
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0B7F3746
/// @DnDParent : 1D1BFEEF
/// @DnDArgument : "font" "f_ssFont"
/// @DnDSaveInfo : "font" "f_ssFont"
draw_set_font(f_ssFont);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 17A7F5DC
/// @DnDParent : 1D1BFEEF
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l17A7F5DC_0=($FF000000 >> 24);
draw_set_alpha(l17A7F5DC_0 / $ff);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 06FE1F84
/// @DnDParent : 1D1BFEEF
/// @DnDArgument : "code" "draw_text(x+24,y+25,string_concat("$",price))"
draw_text(x+24,y+25,string_concat("$",price))