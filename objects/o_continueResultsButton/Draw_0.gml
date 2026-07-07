/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0C7C6070
/// @DnDArgument : "color" "$FF000000"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3A0ECDAA
/// @DnDArgument : "code" "draw_roundrect_ext(x,y,x+304,y+96,10,10,false)"
draw_roundrect_ext(x,y,x+304,y+96,10,10,false)

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6034A1AC
/// @DnDArgument : "color" "renderColour"
/// @DnDArgument : "alpha" "false"
draw_set_colour(renderColour & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2DDD99D5
/// @DnDArgument : "code" "draw_roundrect_ext(x+5,y+5,x+299,y+91,10,10,false)"
draw_roundrect_ext(x+5,y+5,x+299,y+91,10,10,false)

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5EBCDC1B
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0B7F3746
/// @DnDArgument : "font" "f_ssFontBig"
/// @DnDSaveInfo : "font" "f_ssFontBig"
draw_set_font(f_ssFontBig);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 17A7F5DC
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l17A7F5DC_0=($FF000000 >> 24);
draw_set_alpha(l17A7F5DC_0 / $ff);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 06FE1F84
/// @DnDArgument : "code" "draw_text_ext(x+152,y+40,label,20,290);$(13_10)draw_text_ext(x+152,y+60,("+$" + string(global.playedSongsData[(array_length(global.playedSongsData)-1)].money)),20,290);$(13_10)"
draw_text_ext(x+152,y+40,label,20,290);
draw_text_ext(x+152,y+60,("+$" + string(global.playedSongsData[(array_length(global.playedSongsData)-1)].money)),20,290);