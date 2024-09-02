/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4137FD03
/// @DnDArgument : "var" "inShop"
/// @DnDArgument : "value" "false"
if(inShop == false)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B9D1B20
	/// @DnDParent : 4137FD03
	/// @DnDArgument : "var" "selected"
	/// @DnDArgument : "value" "true"
	if(selected == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5BBBC700
		/// @DnDParent : 3B9D1B20
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "selected"
		selected = false;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 35492F07
		/// @DnDParent : 3B9D1B20
		/// @DnDArgument : "function" "instance_deactivate_object"
		/// @DnDArgument : "arg" "o_sellButton"
		instance_deactivate_object(o_sellButton);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 194542B8
	/// @DnDParent : 4137FD03
	else
	{
		/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 540B6B02
		/// @DnDParent : 194542B8
		/// @DnDArgument : "cond" "i < instance_number(o_joker)"
		for(i = 0; i < instance_number(o_joker); i += 1) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 206EFA31
			/// @DnDApplyTo : instance_find(o_joker,i)
			/// @DnDParent : 540B6B02
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "selected"
			with(instance_find(o_joker,i)) {
			selected = false;
			
			}
		}
	
		/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 2B7073C1
		/// @DnDParent : 194542B8
		/// @DnDArgument : "cond" "i < instance_number(o_consumable)"
		for(i = 0; i < instance_number(o_consumable); i += 1) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 365F8FA9
			/// @DnDApplyTo : instance_find(o_consumable,i)
			/// @DnDParent : 2B7073C1
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "selected"
			with(instance_find(o_consumable,i)) {
			selected = false;
			
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3CF4C73D
		/// @DnDParent : 194542B8
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "selected"
		selected = true;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 1F23DD9E
		/// @DnDParent : 194542B8
		/// @DnDArgument : "function" "instance_activate_object"
		/// @DnDArgument : "arg" "o_sellButton"
		instance_activate_object(o_sellButton);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 7127D011
		/// @DnDParent : 194542B8
		/// @DnDArgument : "function" "instance_deactivate_object"
		/// @DnDArgument : "arg" "o_useButton"
		instance_deactivate_object(o_useButton);
	}
}