/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 5014A67E
/// @DnDArgument : "msg" ""SELL""
show_debug_message(string("SELL"));

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 03FD99F5
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < instance_number(o_joker)"
for(var i = 0; i < instance_number(o_joker); i += 1) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D40DFB0
	/// @DnDParent : 03FD99F5
	/// @DnDArgument : "expr" "instance_find(o_joker,i)"
	/// @DnDArgument : "var" "joker"
	joker = instance_find(o_joker,i);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E6E4761
	/// @DnDParent : 03FD99F5
	/// @DnDArgument : "var" "joker.selected"
	/// @DnDArgument : "value" "true"
	if(joker.selected == true){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3E655968
		/// @DnDInput : 2
		/// @DnDParent : 0E6E4761
		/// @DnDArgument : "expr" "joker.sellValue"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "+1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "global.gameMoney"
		/// @DnDArgument : "var_1" "global.runStats.itemsSold"
		global.gameMoney += joker.sellValue;
		global.runStats.itemsSold += +1;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 40177D6C
		/// @DnDInput : 3
		/// @DnDParent : 0E6E4761
		/// @DnDArgument : "function" "array_delete"
		/// @DnDArgument : "arg" "global.jokerInventory"
		/// @DnDArgument : "arg_1" "joker.index"
		/// @DnDArgument : "arg_2" "1"
		array_delete(global.jokerInventory, joker.index, 1);
	
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 78DC3C0A
		/// @DnDApplyTo : {o_InventoryPanel}
		/// @DnDParent : 0E6E4761
		/// @DnDArgument : "event" "1"
		with(o_InventoryPanel) {
		event_user(1);
		}
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 6A9B1A95
		/// @DnDParent : 0E6E4761
		/// @DnDArgument : "function" "instance_deactivate_object"
		/// @DnDArgument : "arg" "self"
		instance_deactivate_object(self);}}

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 5ABA47D2
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < instance_number(o_consumable)"
for(var i = 0; i < instance_number(o_consumable); i += 1) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 693EC9D9
	/// @DnDParent : 5ABA47D2
	/// @DnDArgument : "expr" "instance_find(o_consumable,i)"
	/// @DnDArgument : "var" "item"
	item = instance_find(o_consumable,i);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C9A30E8
	/// @DnDParent : 5ABA47D2
	/// @DnDArgument : "var" "item.selected"
	/// @DnDArgument : "value" "true"
	if(item.selected == true){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 49FCF60E
		/// @DnDParent : 5C9A30E8
		/// @DnDArgument : "expr" "item.sellValue"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.gameMoney"
		global.gameMoney += item.sellValue;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 26C9661F
		/// @DnDInput : 3
		/// @DnDParent : 5C9A30E8
		/// @DnDArgument : "function" "array_delete"
		/// @DnDArgument : "arg" "global.itemsActive"
		/// @DnDArgument : "arg_1" "item.index"
		/// @DnDArgument : "arg_2" "1"
		array_delete(global.itemsActive, item.index, 1);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 675FA6C1
		/// @DnDInput : 2
		/// @DnDParent : 5C9A30E8
		/// @DnDArgument : "function" "array_push"
		/// @DnDArgument : "arg" "global.itemsActive"
		/// @DnDArgument : "arg_1" "false"
		array_push(global.itemsActive, false);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 510502FA
		/// @DnDInput : 3
		/// @DnDParent : 5C9A30E8
		/// @DnDArgument : "function" "array_delete"
		/// @DnDArgument : "arg" "global.itemInventory"
		/// @DnDArgument : "arg_1" "item.index"
		/// @DnDArgument : "arg_2" "1"
		array_delete(global.itemInventory, item.index, 1);
	
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 5A267BF4
		/// @DnDApplyTo : {o_InventoryPanel}
		/// @DnDParent : 5C9A30E8
		/// @DnDArgument : "event" "1"
		with(o_InventoryPanel) {
		event_user(1);
		}
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 073AB2AF
		/// @DnDParent : 5C9A30E8
		/// @DnDArgument : "function" "instance_deactivate_object"
		/// @DnDArgument : "arg" "self"
		instance_deactivate_object(self);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 53F915E2
		/// @DnDParent : 5C9A30E8
		/// @DnDArgument : "function" "instance_deactivate_object"
		/// @DnDArgument : "arg" "o_useButton"
		instance_deactivate_object(o_useButton);}}