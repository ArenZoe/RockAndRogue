/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 208DD51F
/// @DnDArgument : "var" "showDesc"
/// @DnDArgument : "op" "3"
if(showDesc <= 0){	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 3DFFEF53
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l3DFFEF53_0=($FF000000 >> 24);
	draw_set_alpha(l3DFFEF53_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 023979EE
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "x1" "mouse_x"
	/// @DnDArgument : "y1" "mouse_y"
	/// @DnDArgument : "x2" "mouse_x + 300"
	/// @DnDArgument : "y2" "mouse_y + 120"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(mouse_x, mouse_y, mouse_x + 300, mouse_y + 120, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 239DC939
	/// @DnDParent : 208DD51F
	draw_set_colour($FFFFFFFF & $ffffff);
	var l239DC939_0=($FFFFFFFF >> 24);
	draw_set_alpha(l239DC939_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 54CCEB35
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "x1" "mouse_x + 2"
	/// @DnDArgument : "y1" "mouse_y + 2"
	/// @DnDArgument : "x2" "mouse_x + 298"
	/// @DnDArgument : "y2" "mouse_y + 118"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(mouse_x + 2, mouse_y + 2, mouse_x + 298, mouse_y + 118, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 587319DC
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "font" "f_ssFontBig"
	/// @DnDSaveInfo : "font" "f_ssFontBig"
	draw_set_font(f_ssFontBig);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 4145E12C
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 1F5F5971
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "color" "$FF3D3800"
	draw_set_colour($FF3D3800 & $ffffff);
	var l1F5F5971_0=($FF3D3800 >> 24);
	draw_set_alpha(l1F5F5971_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 77A8E44B
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "x" "mouse_x + 150"
	/// @DnDArgument : "y" "mouse_y + 5"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "name"
	draw_text(mouse_x + 150, mouse_y + 5,  + string(name));

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 4BC30F51
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "font" "f_ssFontSmall"
	/// @DnDSaveInfo : "font" "f_ssFontSmall"
	draw_set_font(f_ssFontSmall);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 4D0526FC
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l4D0526FC_0=($FF000000 >> 24);
	draw_set_alpha(l4D0526FC_0 / $ff);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 54C29294
	/// @DnDInput : 5
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "function" "draw_text_ext"
	/// @DnDArgument : "arg" "mouse_x + 150"
	/// @DnDArgument : "arg_1" "mouse_y + 35"
	/// @DnDArgument : "arg_2" "description"
	/// @DnDArgument : "arg_3" "15"
	/// @DnDArgument : "arg_4" "280"
	draw_text_ext(mouse_x + 150, mouse_y + 35, description, 15, 280);}