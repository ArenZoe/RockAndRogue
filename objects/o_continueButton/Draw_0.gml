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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 670AD36C
/// @DnDArgument : "var" "waitCounter"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "5000"
if(waitCounter < 5000){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6B49CEFA
	/// @DnDParent : 670AD36C
	/// @DnDArgument : "expr" "debug_mode"
	if(debug_mode){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3885F9ED
		/// @DnDParent : 6B49CEFA
		/// @DnDArgument : "expr" "5000"
		/// @DnDArgument : "var" "waitCounter"
		waitCounter = 5000;}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D66EC83
	/// @DnDParent : 670AD36C
	/// @DnDArgument : "expr" "+1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "waitCounter"
	waitCounter += +1;

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 26A7E7F8
	/// @DnDParent : 670AD36C
	/// @DnDArgument : "color" "$FF333333"
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FF333333 & $ffffff);draw_set_alpha(1);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2B961ECD
/// @DnDArgument : "var" "waitCounter"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "5000"
if(waitCounter >= 5000){	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 0386B9C6
	/// @DnDParent : 2B961ECD
	/// @DnDArgument : "obj" "o_inventoryLock"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "o_inventoryLock"
	var l0386B9C6_0 = false;l0386B9C6_0 = instance_exists(o_inventoryLock);if(!l0386B9C6_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 65754B2B
		/// @DnDParent : 0386B9C6
		/// @DnDArgument : "objectid" "o_inventoryLock"
		/// @DnDArgument : "layer" ""PopupLayer""
		/// @DnDSaveInfo : "objectid" "o_inventoryLock"
		instance_create_layer(0, 0, "PopupLayer", o_inventoryLock);}}

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
/// @DnDArgument : "code" "draw_text_ext(x+152,y+48,"Continue Once Played",20,290);"
draw_text_ext(x+152,y+48,"Continue Once Played",20,290);