/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 23717231
/// @DnDArgument : "var" "showDesc"
/// @DnDArgument : "op" "3"
if(showDesc <= 0){	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 1C6F3C1F
	/// @DnDParent : 23717231
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l1C6F3C1F_0=($FF000000 >> 24);
	draw_set_alpha(l1C6F3C1F_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 32B05B22
	/// @DnDParent : 23717231
	/// @DnDArgument : "x1" "mouse_x"
	/// @DnDArgument : "y1" "mouse_y"
	/// @DnDArgument : "x2" "mouse_x + 300"
	/// @DnDArgument : "y2" "mouse_y + 120"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(mouse_x, mouse_y, mouse_x + 300, mouse_y + 120, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 1D0E8259
	/// @DnDParent : 23717231
	draw_set_colour($FFFFFFFF & $ffffff);
	var l1D0E8259_0=($FFFFFFFF >> 24);
	draw_set_alpha(l1D0E8259_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 2A730C3D
	/// @DnDParent : 23717231
	/// @DnDArgument : "x1" "mouse_x + 2"
	/// @DnDArgument : "y1" "mouse_y + 2"
	/// @DnDArgument : "x2" "mouse_x + 298"
	/// @DnDArgument : "y2" "mouse_y + 118"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(mouse_x + 2, mouse_y + 2, mouse_x + 298, mouse_y + 118, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 764D7019
	/// @DnDParent : 23717231
	/// @DnDArgument : "font" "f_ssFontBig"
	/// @DnDSaveInfo : "font" "f_ssFontBig"
	draw_set_font(f_ssFontBig);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 21C94460
	/// @DnDParent : 23717231
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 31ECD59E
	/// @DnDParent : 23717231
	/// @DnDArgument : "color" "$FF3D3800"
	draw_set_colour($FF3D3800 & $ffffff);
	var l31ECD59E_0=($FF3D3800 >> 24);
	draw_set_alpha(l31ECD59E_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 43A68DCC
	/// @DnDParent : 23717231
	/// @DnDArgument : "x" "mouse_x + 150"
	/// @DnDArgument : "y" "mouse_y + 5"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "name"
	draw_text(mouse_x + 150, mouse_y + 5,  + string(name));

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 2AFE283F
	/// @DnDParent : 23717231
	/// @DnDArgument : "font" "f_ssFontSmall"
	/// @DnDSaveInfo : "font" "f_ssFontSmall"
	draw_set_font(f_ssFontSmall);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 0CF8D92F
	/// @DnDParent : 23717231
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l0CF8D92F_0=($FF000000 >> 24);
	draw_set_alpha(l0CF8D92F_0 / $ff);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 23E20DF4
	/// @DnDInput : 5
	/// @DnDParent : 23717231
	/// @DnDArgument : "function" "draw_text_ext"
	/// @DnDArgument : "arg" "mouse_x + 150"
	/// @DnDArgument : "arg_1" "mouse_y + 35"
	/// @DnDArgument : "arg_2" "description"
	/// @DnDArgument : "arg_3" "15"
	/// @DnDArgument : "arg_4" "280"
	draw_text_ext(mouse_x + 150, mouse_y + 35, description, 15, 280);}