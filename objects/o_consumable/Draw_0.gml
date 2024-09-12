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