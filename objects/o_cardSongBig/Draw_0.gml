/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0568FBA7
/// @DnDArgument : "color" "$FFCCCCCC"
draw_set_colour($FFCCCCCC & $ffffff);
var l0568FBA7_0=($FFCCCCCC >> 24);
draw_set_alpha(l0568FBA7_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 72749CAE
/// @DnDArgument : "alpha" ".75"
draw_set_alpha(.75);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 0AAA30E7
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "953"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "292"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "fill" "1"
draw_rectangle(x + 0, y + 0, x + 953, y + 292, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1E349038
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l1E349038_0=($FF000000 >> 24);
draw_set_alpha(l1E349038_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 57779615
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 07D5D18A
/// @DnDArgument : "x1" "27"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "27"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "158"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "158"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "fill" "1"
draw_rectangle(x + 27, y + 27, x + 158, y + 158, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 13BD95F1
/// @DnDArgument : "x" "30"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "126 / (sprite_get_width(songAlbum))"
/// @DnDArgument : "yscale" "126 / (sprite_get_height(songAlbum))"
/// @DnDArgument : "sprite" "songAlbum"
draw_sprite_ext(songAlbum, 0, x + 30, y + 30, 126 / (sprite_get_width(songAlbum)), 126 / (sprite_get_height(songAlbum)), 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0C75E335
/// @DnDArgument : "font" "f_ssFontBigger"
/// @DnDSaveInfo : "font" "f_ssFontBigger"
draw_set_font(f_ssFontBigger);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 7A70C912
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2D9AA288
/// @DnDArgument : "code" "draw_text_ext(x+186,y+23,string_copy(global.pack.songs[songIndex].name,0,56),30,664)"
draw_text_ext(x+186,y+23,string_copy(global.pack.songs[songIndex].name,0,56),30,664)

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 28D69AAE
/// @DnDArgument : "font" "f_ssFontBigger"
/// @DnDSaveInfo : "font" "f_ssFontBigger"
draw_set_font(f_ssFontBigger);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 123D7617
/// @DnDArgument : "color" "$FF262626"
draw_set_colour($FF262626 & $ffffff);
var l123D7617_0=($FF262626 >> 24);
draw_set_alpha(l123D7617_0 / $ff);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7811E556
/// @DnDArgument : "code" "draw_text_ext(x+186,y+90,string_copy(global.pack.songs[songIndex].artist,0,20),30,664)"
draw_text_ext(x+186,y+90,string_copy(global.pack.songs[songIndex].artist,0,20),30,664)

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 349CF1BD
/// @DnDArgument : "font" "f_ssFont"
/// @DnDSaveInfo : "font" "f_ssFont"
draw_set_font(f_ssFont);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3B0C3482
/// @DnDArgument : "color" "$FF4C4C4C"
draw_set_colour($FF4C4C4C & $ffffff);
var l3B0C3482_0=($FF4C4C4C >> 24);
draw_set_alpha(l3B0C3482_0 / $ff);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 134D9D95
/// @DnDArgument : "code" "draw_text_ext(x+186,y+116,string_copy(global.pack.songs[songIndex].charter,0,28),30,664)"
draw_text_ext(x+186,y+116,string_copy(global.pack.songs[songIndex].charter,0,28),30,664)

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1A729F8A
/// @DnDArgument : "font" "f_ssFontBig"
/// @DnDSaveInfo : "font" "f_ssFontBig"
draw_set_font(f_ssFontBig);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0DDEB51C
/// @DnDArgument : "color" "$FF007300"
draw_set_colour($FF007300 & $ffffff);
var l0DDEB51C_0=($FF007300 >> 24);
draw_set_alpha(l0DDEB51C_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3F8F02CA
/// @DnDArgument : "x" "186"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "136"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "msToTimestamp(global.pack.songs[songIndex].length)"
draw_text(x + 186, y + 136,  + string(msToTimestamp(global.pack.songs[songIndex].length)));

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 2A487550
/// @DnDArgument : "font" "f_ssFont"
/// @DnDSaveInfo : "font" "f_ssFont"
draw_set_font(f_ssFont);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 765A8FAE
/// @DnDArgument : "color" "$FF666666"
draw_set_colour($FF666666 & $ffffff);
var l765A8FAE_0=($FF666666 >> 24);
draw_set_alpha(l765A8FAE_0 / $ff);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 03F2D64A
/// @DnDArgument : "code" "draw_text_ext(x+309,y+139,string_copy(global.pack.songs[songIndex].genre,0,24),30,664)"
draw_text_ext(x+309,y+139,string_copy(global.pack.songs[songIndex].genre,0,24),30,664)

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 06982CD7
/// @DnDArgument : "x" "601"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "123"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.66"
/// @DnDArgument : "yscale" "0.66"
/// @DnDArgument : "sprite" "sp_coin"
/// @DnDArgument : "col" "$FF00FF00"
/// @DnDSaveInfo : "sprite" "sp_coin"
draw_sprite_ext(sp_coin, 0, x + 601, y + 123, 0.66, 0.66, 0, $FF00FF00 & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 080201D3
/// @DnDArgument : "font" "f_ssFontBiggest"
/// @DnDSaveInfo : "font" "f_ssFontBiggest"
draw_set_font(f_ssFontBiggest);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0B13C271
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1ECCD834
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l1ECCD834_0=($FF000000 >> 24);
draw_set_alpha(l1ECCD834_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 232C6426
/// @DnDArgument : "x" "647"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "110"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""+""
/// @DnDArgument : "var" "songMoney"
draw_text(x + 647, y + 110, string("+") + string(songMoney));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6A266FB3
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l6A266FB3_0=($FF000000 >> 24);
draw_set_alpha(l6A266FB3_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Line
/// @DnDVersion : 1
/// @DnDHash : 3D598592
/// @DnDArgument : "x1" "27"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "173"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "929"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "173"
/// @DnDArgument : "y2_relative" "1"
draw_line(x + 27, y + 173, x + 929, y + 173);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 7C30163D
/// @DnDDisabled : 1
/// @DnDArgument : "color" "$FFB2B2B2"


/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6FF12401
/// @DnDInput : 7
/// @DnDDisabled : 1
/// @DnDArgument : "function" "draw_roundrect_ext"
/// @DnDArgument : "arg" "x+16"
/// @DnDArgument : "arg_1" "y+112"
/// @DnDArgument : "arg_2" "x+48"
/// @DnDArgument : "arg_3" "y+168"
/// @DnDArgument : "arg_4" "32"
/// @DnDArgument : "arg_5" "32"
/// @DnDArgument : "arg_6" "0"


/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 79139FFE
/// @DnDArgument : "x" "33"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "186"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" ".66"
/// @DnDArgument : "yscale" ".66"
/// @DnDArgument : "sprite" "asset_get_index(string_concat("instrument_",global.pack.songs[songIndex].instrument))"
draw_sprite_ext(asset_get_index(string_concat("instrument_",global.pack.songs[songIndex].instrument)), 0, x + 33, y + 186, .66, .66, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1DB5042B
/// @DnDArgument : "var" "global.pack.songs[songIndex].intensity"
/// @DnDArgument : "op" "4"
if(global.pack.songs[songIndex].intensity >= 0){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 384D0176
	/// @DnDParent : 1DB5042B
	/// @DnDArgument : "x" "20"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "239"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" ".66"
	/// @DnDArgument : "yscale" ".66"
	/// @DnDArgument : "sprite" "sp_intensity"
	/// @DnDArgument : "frame" "clamp(global.pack.songs[songIndex].intensity, 0, 7)"
	/// @DnDSaveInfo : "sprite" "sp_intensity"
	draw_sprite_ext(sp_intensity, clamp(global.pack.songs[songIndex].intensity, 0, 7), x + 20, y + 239, .66, .66, 0, $FFFFFF & $ffffff, 1);}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2B47A28B
/// @DnDComment : debug test for $(13_10)showing song bucket
/// @DnDDisabled : 1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-10"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Bucket: ""
/// @DnDArgument : "var" "global.pack.songs[songIndex].bucket"