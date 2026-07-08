/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 75C3909C
/// @DnDArgument : "var" "global.gameMoney"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "modifiedPrice"
if(global.gameMoney >= modifiedPrice){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6FD9EDE2
	/// @DnDParent : 75C3909C
	/// @DnDArgument : "var" "array_length(global.itemInventory)"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "3"
	if(!(array_length(global.itemInventory) >= 3)){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 68A85836
		/// @DnDParent : 6FD9EDE2
		/// @DnDArgument : "msg" ""BUY""
		show_debug_message(string("BUY"));
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 494A4FC6
		/// @DnDInput : 2
		/// @DnDParent : 6FD9EDE2
		/// @DnDArgument : "function" "array_push"
		/// @DnDArgument : "arg" "global.itemInventory"
		/// @DnDArgument : "arg_1" "global.shopInventoryItems[index]"
		array_push(global.itemInventory, global.shopInventoryItems[index]);
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 5C8D3407
		/// @DnDParent : 6FD9EDE2
		/// @DnDArgument : "msg" ""added item to inventory""
		show_debug_message(string("added item to inventory"));
	
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 662B7A78
		/// @DnDApplyTo : {o_InventoryPanel}
		/// @DnDParent : 6FD9EDE2
		/// @DnDArgument : "event" "1"
		with(o_InventoryPanel) {
		event_user(1);
		}
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 21C11B1C
		/// @DnDParent : 6FD9EDE2
		/// @DnDArgument : "value" "-modifiedPrice"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.gameMoney"
		global.gameMoney += -modifiedPrice;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4301692B
		/// @DnDApplyTo : itemReference
		/// @DnDParent : 6FD9EDE2
		with(itemReference) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 053E4C01
		/// @DnDParent : 6FD9EDE2
		instance_destroy();}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 18D86BDD
else{	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 2656123A
	/// @DnDParent : 18D86BDD
	/// @DnDArgument : "msg" ""Not enough moneys :(""
	show_debug_message(string("Not enough moneys :("));}