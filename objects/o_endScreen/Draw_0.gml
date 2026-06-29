/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 60CFB10C
draw_set_colour($FFFFFFFF & $ffffff);
var l60CFB10C_0=($FFFFFFFF >> 24);
draw_set_alpha(l60CFB10C_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 6E448325
/// @DnDArgument : "font" "f_ssFontGiant"
/// @DnDSaveInfo : "font" "f_ssFontGiant"
draw_set_font(f_ssFontGiant);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 691825DE
/// @DnDArgument : "x" "600"
/// @DnDArgument : "y" "300"
/// @DnDArgument : "caption" ""YOU DIED""
draw_text(600, 300, string("YOU DIED") + "");