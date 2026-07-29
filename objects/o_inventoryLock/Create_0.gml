/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 70065F84
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < instance_number(o_joker)"
for(var i = 0; i < instance_number(o_joker); i += 1) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 605665C7
	/// @DnDApplyTo : instance_find(o_joker,i)
	/// @DnDParent : 70065F84
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "selected"
	with(instance_find(o_joker,i)) {
	selected = false;
	
	}}

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 5CDFC514
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < instance_number(o_consumable)"
for(var i = 0; i < instance_number(o_consumable); i += 1) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E941138
	/// @DnDApplyTo : instance_find(o_consumable,i)
	/// @DnDParent : 5CDFC514
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "selected"
	with(instance_find(o_consumable,i)) {
	selected = false;
	
	}}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 13F156EE
/// @DnDArgument : "function" "instance_deactivate_object"
/// @DnDArgument : "arg" "o_sellButton"
instance_deactivate_object(o_sellButton);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 179F0399
/// @DnDArgument : "function" "instance_deactivate_object"
/// @DnDArgument : "arg" "o_sortUp"
instance_deactivate_object(o_sortUp);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4780AD69
/// @DnDArgument : "function" "instance_deactivate_object"
/// @DnDArgument : "arg" "o_sortDown"
instance_deactivate_object(o_sortDown);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4125B8AC
/// @DnDArgument : "function" "instance_deactivate_object"
/// @DnDArgument : "arg" "o_useButton"
instance_deactivate_object(o_useButton);