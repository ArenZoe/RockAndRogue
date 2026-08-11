/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1C29E44F
/// @DnDArgument : "font" "f_latoMinier"
/// @DnDSaveInfo : "font" "f_latoMinier"
draw_set_font(f_latoMinier);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 484B0085
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 48EA5AAA
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 12E74AFA
/// @DnDArgument : "var" "vText"
/// @DnDArgument : "value" ""v" + string(GM_version)"
var vText = "v" + string(GM_version);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 32ACE096
/// @DnDArgument : "expr" "debug_mode"
if(debug_mode){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0246EFFB
	/// @DnDParent : 32ACE096
	/// @DnDArgument : "expr" "+" (Debug Mode)""
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vText"
	vText += +" (Debug Mode)";}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 10CA8D8D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "vText"
draw_text(x + 0, y + 0,  + string(vText));