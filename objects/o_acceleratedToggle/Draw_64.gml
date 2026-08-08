/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 10F2A331
/// @DnDArgument : "expr" "drawDesc"
if(drawDesc){	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 071C3621
	/// @DnDParent : 10F2A331
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 7C7AACB9
	/// @DnDParent : 10F2A331
	/// @DnDArgument : "x1" "mouse_x +15"
	/// @DnDArgument : "y1" "mouse_y -1"
	/// @DnDArgument : "x2" "mouse_x +256"
	/// @DnDArgument : "y2" "mouse_y +14"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(mouse_x +15, mouse_y -1, mouse_x +256, mouse_y +14, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 25092F9F
	/// @DnDParent : 10F2A331
	/// @DnDArgument : "font" "f_latoMinier"
	/// @DnDSaveInfo : "font" "f_latoMinier"
	draw_set_font(f_latoMinier);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 0151FAF0
	/// @DnDParent : 10F2A331
	/// @DnDArgument : "color" "$FF000000"
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 20472C82
	/// @DnDParent : 10F2A331
	/// @DnDArgument : "x" "mouse_x +17"
	/// @DnDArgument : "y" "mouse_y "
	/// @DnDArgument : "caption" ""Harder songs and modifiers show up sooner.""
	draw_text(mouse_x +17, mouse_y , string("Harder songs and modifiers show up sooner.") + "");}