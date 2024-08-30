/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4AD03C79
/// @DnDArgument : "var" "selected"
/// @DnDArgument : "value" "true"
if(selected == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 68DE93F5
	/// @DnDParent : 4AD03C79
	/// @DnDArgument : "expr" "1.1"
	/// @DnDArgument : "var" "self.image_xscale"
	self.image_xscale = 1.1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 251413EA
	/// @DnDParent : 4AD03C79
	/// @DnDArgument : "expr" "1.1"
	/// @DnDArgument : "var" "self.image_yscale"
	self.image_yscale = 1.1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4D79CBF4
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F1DC9E2
	/// @DnDParent : 4D79CBF4
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "self.image_xscale"
	self.image_xscale = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 515D27FE
	/// @DnDParent : 4D79CBF4
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "self.image_yscale"
	self.image_yscale = 1;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 3699DF1F
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 536E8A88
/// @DnDArgument : "var" "showDesc"
/// @DnDArgument : "op" "3"
if(showDesc <= 0)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 6A423611
	/// @DnDParent : 536E8A88
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l6A423611_0=($FF000000 >> 24);
	draw_set_alpha(l6A423611_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 47906C04
	/// @DnDParent : 536E8A88
	/// @DnDArgument : "x1" "mouse_x"
	/// @DnDArgument : "y1" "mouse_y"
	/// @DnDArgument : "x2" "mouse_x + 300"
	/// @DnDArgument : "y2" "mouse_y + 120"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(mouse_x, mouse_y, mouse_x + 300, mouse_y + 120, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 1930FCDA
	/// @DnDParent : 536E8A88
	draw_set_colour($FFFFFFFF & $ffffff);
	var l1930FCDA_0=($FFFFFFFF >> 24);
	draw_set_alpha(l1930FCDA_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 39E373A8
	/// @DnDParent : 536E8A88
	/// @DnDArgument : "x1" "mouse_x + 2"
	/// @DnDArgument : "y1" "mouse_y + 2"
	/// @DnDArgument : "x2" "mouse_x + 298"
	/// @DnDArgument : "y2" "mouse_y + 118"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(mouse_x + 2, mouse_y + 2, mouse_x + 298, mouse_y + 118, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 1D4D214D
	/// @DnDParent : 536E8A88
	/// @DnDArgument : "font" "f_ssFontBig"
	/// @DnDSaveInfo : "font" "f_ssFontBig"
	draw_set_font(f_ssFontBig);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 4480C43B
	/// @DnDParent : 536E8A88
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 70F1AA64
	/// @DnDParent : 536E8A88
	/// @DnDArgument : "color" "$FF3D3800"
	draw_set_colour($FF3D3800 & $ffffff);
	var l70F1AA64_0=($FF3D3800 >> 24);
	draw_set_alpha(l70F1AA64_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 7E0220AC
	/// @DnDParent : 536E8A88
	/// @DnDArgument : "x" "mouse_x + 150"
	/// @DnDArgument : "y" "mouse_y + 5"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "name"
	draw_text(mouse_x + 150, mouse_y + 5,  + string(name));

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 62FD3C64
	/// @DnDParent : 536E8A88
	/// @DnDArgument : "font" "f_ssFontSmall"
	/// @DnDSaveInfo : "font" "f_ssFontSmall"
	draw_set_font(f_ssFontSmall);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 0E70DEF2
	/// @DnDParent : 536E8A88
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l0E70DEF2_0=($FF000000 >> 24);
	draw_set_alpha(l0E70DEF2_0 / $ff);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 54D58DD8
	/// @DnDInput : 5
	/// @DnDParent : 536E8A88
	/// @DnDArgument : "function" "draw_text_ext"
	/// @DnDArgument : "arg" "mouse_x + 150"
	/// @DnDArgument : "arg_1" "mouse_y + 35"
	/// @DnDArgument : "arg_2" "description"
	/// @DnDArgument : "arg_3" "15"
	/// @DnDArgument : "arg_4" "280"
	draw_text_ext(mouse_x + 150, mouse_y + 35, description, 15, 280);
}