/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 0EC40948
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "alpha" ".78"
/// @DnDArgument : "sprite" "sp_cardStatus"
/// @DnDArgument : "col" "$343434"
/// @DnDSaveInfo : "sprite" "sp_cardStatus"
draw_sprite_ext(sp_cardStatus, 0, x + 0, y + 0, 1, 1, 0, $343434 & $ffffff, .78);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 675F06F7
/// @DnDArgument : "font" "f_ssFontBigger"
/// @DnDSaveInfo : "font" "f_ssFontBigger"
draw_set_font(f_ssFontBigger);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5AAD7C8D
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0521D7EE
/// @DnDArgument : "x" "152"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "12"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Round ""
/// @DnDArgument : "var" "global.gameRound"
draw_text(x + 152, y + 12, string("Round ") + string(global.gameRound));

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 58F72858
/// @DnDArgument : "x" "32"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.6"
/// @DnDArgument : "yscale" "0.6"
/// @DnDArgument : "sprite" "sp_coin"
/// @DnDArgument : "col" "$FF00FF00"
/// @DnDSaveInfo : "sprite" "sp_coin"
draw_sprite_ext(sp_coin, 0, x + 32, y + 50, 0.6, 0.6, 0, $FF00FF00 & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 779D4224
/// @DnDArgument : "x" "160"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.6"
/// @DnDArgument : "yscale" "0.6"
/// @DnDArgument : "sprite" "sp_star"
/// @DnDArgument : "col" "$FF05C4FF"
/// @DnDSaveInfo : "sprite" "sp_star"
draw_sprite_ext(sp_star, 0, x + 160, y + 50, 0.6, 0.6, 0, $FF05C4FF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 53999A5C
/// @DnDArgument : "font" "f_ssFontBigger"
/// @DnDSaveInfo : "font" "f_ssFontBigger"
draw_set_font(f_ssFontBigger);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 751A4498
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4DAC2F50
/// @DnDArgument : "x" "76"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "54"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "global.gameMoney"
draw_text(x + 76, y + 54,  + string(global.gameMoney));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7C8C87D6
/// @DnDArgument : "x" "204"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "54"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "global.nextStars"
draw_text(x + 204, y + 54,  + string(global.nextStars));

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5E2A199C
/// @DnDDisabled : 1
/// @DnDArgument : "code" "draw_text_ext(x+96,y+16,string_copy(global.pack.title,0,70),15,128)$(13_10)"