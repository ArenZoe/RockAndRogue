/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 23B6A1ED
/// @DnDArgument : "var" "isActive"
/// @DnDArgument : "value" "true"
if(isActive == true){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73450908
	/// @DnDInput : 2
	/// @DnDParent : 23B6A1ED
	/// @DnDArgument : "expr" "animcurve_channel_evaluate(animcurve_get_channel(anim_swell, 0), sin(current_time/2000)/2+0.5)"
	/// @DnDArgument : "expr_1" "animcurve_channel_evaluate(animcurve_get_channel(anim_swell2, 0), sin(current_time/2000)/2+0.5)"
	/// @DnDArgument : "var" "curveOffset"
	/// @DnDArgument : "var_1" "curveOffset2"
	curveOffset = animcurve_channel_evaluate(animcurve_get_channel(anim_swell, 0), sin(current_time/2000)/2+0.5);
	curveOffset2 = animcurve_channel_evaluate(animcurve_get_channel(anim_swell2, 0), sin(current_time/2000)/2+0.5);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 6EF3C2F7
	/// @DnDParent : 23B6A1ED
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "1.1 + curveOffset"
	/// @DnDArgument : "yscale" "1.1 + curveOffset"
	/// @DnDArgument : "rot" "shineAngle1"
	/// @DnDArgument : "sprite" "sp_shine"
	/// @DnDSaveInfo : "sprite" "sp_shine"
	draw_sprite_ext(sp_shine, 0, x + 0, y + 0, 1.1 + curveOffset, 1.1 + curveOffset, shineAngle1, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 49BD7846
	/// @DnDParent : 23B6A1ED
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "1.1 + curveOffset2"
	/// @DnDArgument : "yscale" "1.1 + curveOffset2"
	/// @DnDArgument : "rot" "shineAngle2"
	/// @DnDArgument : "sprite" "sp_shine"
	/// @DnDArgument : "col" "$FFB2FFFF"
	/// @DnDSaveInfo : "sprite" "sp_shine"
	draw_sprite_ext(sp_shine, 0, x + 0, y + 0, 1.1 + curveOffset2, 1.1 + curveOffset2, shineAngle2, $FFB2FFFF & $ffffff, 1);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 002446A1
/// @DnDArgument : "var" "selected"
/// @DnDArgument : "value" "true"
if(selected == true){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0119433B
	/// @DnDParent : 002446A1
	/// @DnDArgument : "expr" "1.1"
	/// @DnDArgument : "var" "self.image_xscale"
	self.image_xscale = 1.1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E424672
	/// @DnDParent : 002446A1
	/// @DnDArgument : "expr" "1.1"
	/// @DnDArgument : "var" "self.image_yscale"
	self.image_yscale = 1.1;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5301AE98
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B4EA52E
	/// @DnDParent : 5301AE98
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "self.image_xscale"
	self.image_xscale = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 374A7DC2
	/// @DnDParent : 5301AE98
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "self.image_yscale"
	self.image_yscale = 1;}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 3699DF1F
draw_self();