/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 5014A67E
/// @DnDArgument : "msg" ""SORT""
show_debug_message(string("SORT"));

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 30A5AED2
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < instance_number(o_joker)"
for(var i = 0; i < instance_number(o_joker); i += 1) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30ACA135
	/// @DnDParent : 30A5AED2
	/// @DnDArgument : "expr" "instance_find(o_joker,i)"
	/// @DnDArgument : "var" "joker"
	joker = instance_find(o_joker,i);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09883B6E
	/// @DnDParent : 30A5AED2
	/// @DnDArgument : "var" "joker.selected"
	/// @DnDArgument : "value" "true"
	if(joker.selected == true){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 74397F20
		/// @DnDParent : 09883B6E
		/// @DnDArgument : "expr" "joker.index"
		/// @DnDArgument : "var" "selectedIndex"
		selectedIndex = joker.index;}}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0AAA5F95
/// @DnDInput : 2
/// @DnDArgument : "var" "joker1"
/// @DnDArgument : "value" "global.jokerInventory[selectedIndex]"
/// @DnDArgument : "var_1" "joker2"
/// @DnDArgument : "value_1" "global.jokerInventory[selectedIndex-1]"
var joker1 = global.jokerInventory[selectedIndex];
var joker2 = global.jokerInventory[selectedIndex-1];

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4B991698
/// @DnDInput : 2
/// @DnDArgument : "expr" "joker2"
/// @DnDArgument : "expr_1" "joker1"
/// @DnDArgument : "var" "global.jokerInventory[selectedIndex]"
/// @DnDArgument : "var_1" "global.jokerInventory[selectedIndex-1]"
global.jokerInventory[selectedIndex] = joker2;
global.jokerInventory[selectedIndex-1] = joker1;

/// @DnDAction : YoYo Games.Instances.Call_User_Event
/// @DnDVersion : 1
/// @DnDHash : 55EB1802
/// @DnDApplyTo : {o_InventoryPanel}
/// @DnDArgument : "event" "1"
with(o_InventoryPanel) {
event_user(1);
}