/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 4A6FB8BC
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
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l02FDF33E_0=($FF000000 >> 24);
draw_set_alpha(l02FDF33E_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Ellipse
/// @DnDVersion : 1
/// @DnDHash : 2DE106BC
/// @DnDArgument : "x1" "80"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "20"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "160"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "100"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "fill" "1"
draw_ellipse(x + 80, y + 20, x + 160, y + 100, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 6C21919B
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 02E31B44
/// @DnDArgument : "font" "f_ssFont"
/// @DnDSaveInfo : "font" "f_ssFont"
draw_set_font(f_ssFont);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 21D60D15
/// @DnDArgument : "code" "draw_text_ext(x+120,y+110,string_copy(poolTitle,0,35),15,200)"
draw_text_ext(x+120,y+110,string_copy(poolTitle,0,35),15,200)

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 728EBAFD
/// @DnDArgument : "font" "f_ssFontSmall"
/// @DnDSaveInfo : "font" "f_ssFontSmall"
draw_set_font(f_ssFontSmall);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 2F5F33D5
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 366ADCFA
/// @DnDArgument : "code" "draw_text_ext(x+20,y+150,string_copy(poolDesc,0,70),15,200)$(13_10)"
draw_text_ext(x+20,y+150,string_copy(poolDesc,0,70),15,200)

/// @DnDAction : YoYo Games.Drawing.Draw_Line
/// @DnDVersion : 1
/// @DnDHash : 2465D7CC
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
/// @DnDHash : 58A60AC0
/// @DnDArgument : "font" "f_ssFontBig"
/// @DnDSaveInfo : "font" "f_ssFontBig"
draw_set_font(f_ssFontBig);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 517E5D45
/// @DnDArgument : "x" "50"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "282"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "poolCurrency"
draw_text(x + 50, y + 282, string(poolCurrency) + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5E8EFD7A
/// @DnDArgument : "x" "140"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "282"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "poolDifficulty"
draw_text(x + 140, y + 282, string(poolDifficulty) + "");