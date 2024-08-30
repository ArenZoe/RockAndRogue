/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 16FD4710
/// @DnDArgument : "cond" "i < 5"
for(i = 0; i < 5; i += 1) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1FB9C20C
	/// @DnDParent : 16FD4710
	/// @DnDArgument : "xpos" "16"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "64 * (i+1)"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newJoker"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "o_joker"
	/// @DnDArgument : "layer" ""Buttons""
	/// @DnDSaveInfo : "objectid" "o_joker"
	var newJoker = instance_create_layer(x + 16, y + 64 * (i+1), "Buttons", o_joker);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6CCF34FF
	/// @DnDParent : 16FD4710
	/// @DnDArgument : "expr" "i"
	/// @DnDArgument : "var" "newJoker.jokerID"
	newJoker.jokerID = i;
}

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 14D6B388
/// @DnDArgument : "cond" "i < 3"
for(i = 0; i < 3; i += 1) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 520AD2C1
	/// @DnDParent : 14D6B388
	/// @DnDArgument : "xpos" "16 + (80 * i)"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "400"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newItem"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "o_consumable"
	/// @DnDArgument : "layer" ""Buttons""
	/// @DnDSaveInfo : "objectid" "o_consumable"
	var newItem = instance_create_layer(x + 16 + (80 * i), y + 400, "Buttons", o_consumable);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 196791A9
	/// @DnDParent : 14D6B388
	/// @DnDArgument : "expr" "i"
	/// @DnDArgument : "var" "newItem.ItemID"
	newItem.ItemID = i;
}