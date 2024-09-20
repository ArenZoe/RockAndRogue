/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4137FD03
/// @DnDArgument : "var" "inShop"
/// @DnDArgument : "value" "false"
if(inShop == false){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B9D1B20
	/// @DnDParent : 4137FD03
	/// @DnDArgument : "var" "selected"
	/// @DnDArgument : "value" "true"
	if(selected == true){	/// @DnDAction : YoYo Games.Common.Variable
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
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 3E23C66D
		/// @DnDParent : 3B9D1B20
		/// @DnDArgument : "function" "instance_deactivate_object"
		/// @DnDArgument : "arg" "o_sortDown"
		instance_deactivate_object(o_sortDown);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 4C65B21E
		/// @DnDParent : 3B9D1B20
		/// @DnDArgument : "function" "instance_deactivate_object"
		/// @DnDArgument : "arg" "o_sortUp"
		instance_deactivate_object(o_sortUp);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 194542B8
	/// @DnDParent : 4137FD03
	else{	/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 540B6B02
		/// @DnDParent : 194542B8
		/// @DnDArgument : "init_temp" "1"
		/// @DnDArgument : "cond" "i < instance_number(o_joker)"
		for(var i = 0; i < instance_number(o_joker); i += 1) {	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 206EFA31
			/// @DnDApplyTo : instance_find(o_joker,i)
			/// @DnDParent : 540B6B02
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "selected"
			with(instance_find(o_joker,i)) {
			selected = false;
			
			}}
	
		/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 2B7073C1
		/// @DnDParent : 194542B8
		/// @DnDArgument : "init_temp" "1"
		/// @DnDArgument : "cond" "i < instance_number(o_consumable)"
		for(var i = 0; i < instance_number(o_consumable); i += 1) {	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 365F8FA9
			/// @DnDApplyTo : instance_find(o_consumable,i)
			/// @DnDParent : 2B7073C1
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "selected"
			with(instance_find(o_consumable,i)) {
			selected = false;
			
			}}
	
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
		/// @DnDHash : 5F7BE7FB
		/// @DnDParent : 194542B8
		/// @DnDArgument : "function" "instance_deactivate_object"
		/// @DnDArgument : "arg" "o_sortDown"
		instance_deactivate_object(o_sortDown);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 571B8705
		/// @DnDParent : 194542B8
		/// @DnDArgument : "function" "instance_deactivate_object"
		/// @DnDArgument : "arg" "o_sortUp"
		instance_deactivate_object(o_sortUp);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 6689DADA
		/// @DnDParent : 194542B8
		/// @DnDArgument : "function" "instance_deactivate_object"
		/// @DnDArgument : "arg" "o_sortDown"
		instance_deactivate_object(o_sortDown);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 65799B91
		/// @DnDParent : 194542B8
		/// @DnDArgument : "var" "index"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "array_length(global.jokerInventory) - 1"
		if(index < array_length(global.jokerInventory) - 1){	/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 082C40F0
			/// @DnDParent : 65799B91
			/// @DnDArgument : "function" "instance_activate_object"
			/// @DnDArgument : "arg" "o_sortDown"
			instance_activate_object(o_sortDown);}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6EBF3E02
		/// @DnDParent : 194542B8
		/// @DnDArgument : "var" "index"
		/// @DnDArgument : "op" "2"
		if(index > 0){	/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 1B553C98
			/// @DnDParent : 6EBF3E02
			/// @DnDArgument : "function" "instance_activate_object"
			/// @DnDArgument : "arg" "o_sortUp"
			instance_activate_object(o_sortUp);}
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 7127D011
		/// @DnDParent : 194542B8
		/// @DnDArgument : "function" "instance_deactivate_object"
		/// @DnDArgument : "arg" "o_useButton"
		instance_deactivate_object(o_useButton);}}