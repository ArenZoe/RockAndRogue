/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 5014A67E
/// @DnDArgument : "msg" ""USE""
show_debug_message(string("USE"));

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 4F020376
/// @DnDApplyTo : {o_consumable}
with(o_consumable) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0B2C3F81
	/// @DnDParent : 4F020376
	/// @DnDArgument : "expr" "inShop"
	/// @DnDArgument : "not" "1"
	if(!(inShop)){	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5C64B0C3
		/// @DnDParent : 0B2C3F81
		/// @DnDArgument : "expr" "selected"
		if(selected){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 36775C94
			/// @DnDParent : 5C64B0C3
			/// @DnDArgument : "expr" "!isActive"
			/// @DnDArgument : "var" "isActive"
			isActive = !isActive;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0C901773
			/// @DnDParent : 5C64B0C3
			/// @DnDArgument : "expr" "!global.itemsActive[index]"
			/// @DnDArgument : "var" "global.itemsActive[index]"
			global.itemsActive[index] = !global.itemsActive[index];
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5839604C
			/// @DnDParent : 5C64B0C3
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "selected"
			selected = false;}}
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5FFEDC8D
/// @DnDArgument : "function" "instance_deactivate_object"
/// @DnDArgument : "arg" "o_sellButton"
instance_deactivate_object(o_sellButton);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6D2BEFCB
/// @DnDArgument : "function" "instance_deactivate_object"
/// @DnDArgument : "arg" "self"
instance_deactivate_object(self);