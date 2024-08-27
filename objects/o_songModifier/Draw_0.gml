/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 23A3CD50
/// @DnDArgument : "color" "$FF000000"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2C72312B
/// @DnDArgument : "code" "draw_roundrect_ext(x,y,x+96,y+48,5,5,false)"
draw_roundrect_ext(x,y,x+96,y+48,5,5,false)

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 69D2E1EA
/// @DnDArgument : "color" "$FFB2B2B2"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFB2B2B2 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5825328A
/// @DnDArgument : "code" "draw_roundrect_ext(x+2,y+2,x+94,y+46,5,5,false)"
draw_roundrect_ext(x+2,y+2,x+94,y+46,5,5,false)

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 2151DF27
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l2151DF27_0=($FF000000 >> 24);
draw_set_alpha(l2151DF27_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0B1EA3A7
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 235D9133
/// @DnDArgument : "font" "f_ssFontTiny"
/// @DnDSaveInfo : "font" "f_ssFontTiny"
draw_set_font(f_ssFontTiny);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 696DB7AA
/// @DnDArgument : "code" "draw_text_ext(x+49,y+25,string_copy(songModifier,0,35),15,75)"
draw_text_ext(x+49,y+25,string_copy(songModifier,0,35),15,75)