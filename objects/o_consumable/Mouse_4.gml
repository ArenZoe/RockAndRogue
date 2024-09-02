/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F8FBAA1
/// @DnDArgument : "var" "inShop"
/// @DnDArgument : "value" "false"
if(inShop == false)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 70D8A23E
	/// @DnDParent : 0F8FBAA1
	/// @DnDArgument : "var" "selected"
	/// @DnDArgument : "value" "true"
	if(selected == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 714BFA84
		/// @DnDParent : 70D8A23E
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "selected"
		selected = false;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 51D59899
		/// @DnDParent : 70D8A23E
		/// @DnDArgument : "function" "instance_deactivate_object"
		/// @DnDArgument : "arg" "o_sellButton"
		instance_deactivate_object(o_sellButton);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 30E30B01
		/// @DnDParent : 70D8A23E
		/// @DnDArgument : "function" "instance_deactivate_object"
		/// @DnDArgument : "arg" "o_useButton"
		instance_deactivate_object(o_useButton);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1C59CB2E
	/// @DnDParent : 0F8FBAA1
	else
	{
		/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 3758040D
		/// @DnDParent : 1C59CB2E
		/// @DnDArgument : "cond" "i < instance_number(o_joker)"
		for(i = 0; i < instance_number(o_joker); i += 1) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 59293579
			/// @DnDApplyTo : instance_find(o_joker,i)
			/// @DnDParent : 3758040D
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "selected"
			with(instance_find(o_joker,i)) {
			selected = false;
			
			}
		}
	
		/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 28A60758
		/// @DnDParent : 1C59CB2E
		/// @DnDArgument : "cond" "i < instance_number(o_consumable)"
		for(i = 0; i < instance_number(o_consumable); i += 1) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 387B7AA0
			/// @DnDApplyTo : instance_find(o_consumable,i)
			/// @DnDParent : 28A60758
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "selected"
			with(instance_find(o_consumable,i)) {
			selected = false;
			
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 14B6BCDA
		/// @DnDParent : 1C59CB2E
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "selected"
		selected = true;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 4EDF77DC
		/// @DnDParent : 1C59CB2E
		/// @DnDArgument : "function" "instance_activate_object"
		/// @DnDArgument : "arg" "o_sellButton"
		instance_activate_object(o_sellButton);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 4361F607
		/// @DnDParent : 1C59CB2E
		/// @DnDArgument : "function" "instance_activate_object"
		/// @DnDArgument : "arg" "o_useButton"
		instance_activate_object(o_useButton);
	}
}