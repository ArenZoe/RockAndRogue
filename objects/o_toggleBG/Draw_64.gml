/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 00E5BC4E
/// @DnDArgument : "expr" "drawDesc"
if(drawDesc){	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 27CA2355
	/// @DnDParent : 00E5BC4E
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 3619FC88
	/// @DnDParent : 00E5BC4E
	/// @DnDArgument : "x1" "mouse_x +15"
	/// @DnDArgument : "y1" "mouse_y -1"
	/// @DnDArgument : "x2" "mouse_x +180"
	/// @DnDArgument : "y2" "mouse_y +14"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(mouse_x +15, mouse_y -1, mouse_x +180, mouse_y +14, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 1C7D2220
	/// @DnDParent : 00E5BC4E
	/// @DnDArgument : "font" "f_latoMinier"
	/// @DnDSaveInfo : "font" "f_latoMinier"
	draw_set_font(f_latoMinier);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 65B2D05D
	/// @DnDParent : 00E5BC4E
	/// @DnDArgument : "color" "$FF000000"
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 5BCAFD17
	/// @DnDParent : 00E5BC4E
	/// @DnDArgument : "x" "mouse_x +17"
	/// @DnDArgument : "y" "mouse_y "
	/// @DnDArgument : "caption" ""Toggle background animations""
	draw_text(mouse_x +17, mouse_y , string("Toggle background animations") + "");}