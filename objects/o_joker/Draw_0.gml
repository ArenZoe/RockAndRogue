/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4AD03C79
/// @DnDArgument : "var" "selected"
/// @DnDArgument : "value" "true"
if(selected == true){	/// @DnDAction : YoYo Games.Common.Variable
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
	self.image_yscale = 1.1;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4D79CBF4
else{	/// @DnDAction : YoYo Games.Common.Variable
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
	self.image_yscale = 1;}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 3699DF1F
draw_self();