/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0CF7025C
/// @DnDArgument : "var" "global.gameMoney"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "price"
if(global.gameMoney >= price){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28687843
	/// @DnDParent : 0CF7025C
	/// @DnDArgument : "var" "array_length(global.jokerInventory)"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "5"
	if(!(array_length(global.jokerInventory) >= 5)){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 00E84CC9
		/// @DnDParent : 28687843
		/// @DnDArgument : "msg" ""BUY""
		show_debug_message(string("BUY"));
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 661B6C8F
		/// @DnDInput : 2
		/// @DnDParent : 28687843
		/// @DnDArgument : "function" "array_push"
		/// @DnDArgument : "arg" "global.jokerInventory"
		/// @DnDArgument : "arg_1" "global.shopInventory[index]"
		array_push(global.jokerInventory, global.shopInventory[index]);
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 1146953F
		/// @DnDParent : 28687843
		/// @DnDArgument : "msg" ""added joker to inventory""
		show_debug_message(string("added joker to inventory"));
	
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 100727F3
		/// @DnDApplyTo : {o_InventoryPanel}
		/// @DnDParent : 28687843
		/// @DnDArgument : "event" "1"
		with(o_InventoryPanel) {
		event_user(1);
		}
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 79D923E2
		/// @DnDParent : 28687843
		/// @DnDArgument : "value" "-price"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.gameMoney"
		global.gameMoney += -price;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 53CE85DE
		/// @DnDApplyTo : jokerReference
		/// @DnDParent : 28687843
		with(jokerReference) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 72825E3C
		/// @DnDParent : 28687843
		instance_destroy();}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2C47BD85
else{	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 5014A67E
	/// @DnDParent : 2C47BD85
	/// @DnDArgument : "msg" ""Not enough moneys :(""
	show_debug_message(string("Not enough moneys :("));}