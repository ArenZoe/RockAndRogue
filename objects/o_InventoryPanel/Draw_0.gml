/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 284168A0
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 02FACEF6
draw_set_colour($FFFFFFFF & $ffffff);
var l02FACEF6_0=($FFFFFFFF >> 24);
draw_set_alpha(l02FACEF6_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 09A65975
/// @DnDArgument : "font" "f_ssFontBig"
/// @DnDSaveInfo : "font" "f_ssFontBig"
draw_set_font(f_ssFontBig);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 2C51796D
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1821FED7
/// @DnDArgument : "x" "120"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "16"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Inventory""
draw_text(x + 120, y + 16, string("Inventory") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Line
/// @DnDVersion : 1
/// @DnDHash : 06F72320
/// @DnDArgument : "x1" "16"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "48"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "226"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "48"
/// @DnDArgument : "y2_relative" "1"
draw_line(x + 16, y + 48, x + 226, y + 48);