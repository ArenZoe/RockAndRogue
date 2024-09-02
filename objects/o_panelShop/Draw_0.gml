/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4269E511
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 56CBDA24
draw_set_colour($FFFFFFFF & $ffffff);
var l56CBDA24_0=($FFFFFFFF >> 24);
draw_set_alpha(l56CBDA24_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 17B4A756
/// @DnDArgument : "font" "f_ssFontBig"
/// @DnDSaveInfo : "font" "f_ssFontBig"
draw_set_font(f_ssFontBig);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 64A7FEF8
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2319581F
/// @DnDArgument : "x" "152"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "16"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Shop""
draw_text(x + 152, y + 16, string("Shop") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Line
/// @DnDVersion : 1
/// @DnDHash : 258C5E14
/// @DnDArgument : "x1" "16"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "48"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "288"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "48"
/// @DnDArgument : "y2_relative" "1"
draw_line(x + 16, y + 48, x + 288, y + 48);