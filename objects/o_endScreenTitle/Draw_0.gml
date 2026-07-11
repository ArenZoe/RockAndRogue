/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 19991805
draw_set_colour($FFFFFFFF & $ffffff);
var l19991805_0=($FFFFFFFF >> 24);
draw_set_alpha(l19991805_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5F185F90
/// @DnDArgument : "font" "f_ssFontBiggest"
/// @DnDSaveInfo : "font" "f_ssFontBiggest"
draw_set_font(f_ssFontBiggest);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0B2DBD01
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 455C43E1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""RUN OVER""
draw_text_transformed(x + 0, y + 0, string("RUN OVER") + "", 1, 1, 0);