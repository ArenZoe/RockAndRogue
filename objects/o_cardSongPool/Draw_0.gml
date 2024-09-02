/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 0EC40948
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "alpha" ".78"
/// @DnDArgument : "sprite" "sp_cardSongPool"
/// @DnDArgument : "col" "$FF343434"
/// @DnDSaveInfo : "sprite" "sp_cardSongPool"
draw_sprite_ext(sp_cardSongPool, 0, x + 0, y + 0, 1, 1, 0, $FF343434 & $ffffff, .78);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 7438CE30
/// @DnDArgument : "x" "16"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "16"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "64 / sprite_get_width(packIcon)"
/// @DnDArgument : "yscale" "64 / sprite_get_height(packIcon)"
/// @DnDArgument : "sprite" "packIcon"
draw_sprite_ext(packIcon, 0, x + 16, y + 16, 64 / sprite_get_width(packIcon), 64 / sprite_get_height(packIcon), 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 675F06F7
/// @DnDArgument : "font" "f_ssFont"
/// @DnDSaveInfo : "font" "f_ssFont"
draw_set_font(f_ssFont);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5AAD7C8D
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 26B0660B
draw_set_colour($FFFFFFFF & $ffffff);
var l26B0660B_0=($FFFFFFFF >> 24);
draw_set_alpha(l26B0660B_0 / $ff);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5E2A199C
/// @DnDArgument : "code" "draw_text_ext(x+96,y+16,string_copy(global.pack.title,0,70),15,128)$(13_10)"
draw_text_ext(x+96,y+16,string_copy(global.pack.title,0,70),15,128)