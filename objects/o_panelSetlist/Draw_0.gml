/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 0422A8D9
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0BD0A970
draw_set_colour($FFFFFFFF & $ffffff);
var l0BD0A970_0=($FFFFFFFF >> 24);
draw_set_alpha(l0BD0A970_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0AB918D7
/// @DnDArgument : "font" "f_ssFontBigger"
/// @DnDSaveInfo : "font" "f_ssFontBigger"
draw_set_font(f_ssFontBigger);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 68174E19
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4F1ADB90
/// @DnDArgument : "x" "320"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "16"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Setlist ""
draw_text(x + 320, y + 16, string("Setlist ") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Line
/// @DnDVersion : 1
/// @DnDHash : 7625C1D7
/// @DnDArgument : "x1" "16"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "54"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "590"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "54"
/// @DnDArgument : "y2_relative" "1"
draw_line(x + 16, y + 54, x + 590, y + 54);