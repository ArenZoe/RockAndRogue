/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 59866407
/// @DnDArgument : "expr" "drawDesc"
if(drawDesc){	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 5A141C37
	/// @DnDParent : 59866407
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 1413BBA3
	/// @DnDParent : 59866407
	/// @DnDArgument : "x1" "mouse_x +15"
	/// @DnDArgument : "y1" "mouse_y -1"
	/// @DnDArgument : "x2" "mouse_x +182"
	/// @DnDArgument : "y2" "mouse_y +14"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(mouse_x +15, mouse_y -1, mouse_x +182, mouse_y +14, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 1AE7B7C8
	/// @DnDParent : 59866407
	/// @DnDArgument : "font" "f_latoMinier"
	/// @DnDSaveInfo : "font" "f_latoMinier"
	draw_set_font(f_latoMinier);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 2F7BF46C
	/// @DnDParent : 59866407
	/// @DnDArgument : "color" "$FF000000"
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 3082DC12
	/// @DnDParent : 59866407
	/// @DnDArgument : "x" "mouse_x +17"
	/// @DnDArgument : "y" "mouse_y "
	/// @DnDArgument : "caption" ""Browse pack installation folder""
	draw_text(mouse_x +17, mouse_y , string("Browse pack installation folder") + "");}