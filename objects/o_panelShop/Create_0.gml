/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 03A72545
/// @DnDArgument : "cond" "i < 4"
for(i = 0; i < 4; i += 1) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 509D548E
	/// @DnDParent : 03A72545
	/// @DnDArgument : "xpos" "80"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "64 * (i +1)"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newJoker"
	/// @DnDArgument : "objectid" "o_joker"
	/// @DnDArgument : "layer" ""Buttons""
	/// @DnDSaveInfo : "objectid" "o_joker"
	newJoker = instance_create_layer(x + 80, y + 64 * (i +1), "Buttons", o_joker);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4EDB8DB2
	/// @DnDParent : 03A72545
	/// @DnDArgument : "xpos" "16"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "64 * (i +1)"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newJokerButton"
	/// @DnDArgument : "objectid" "o_buyButton"
	/// @DnDArgument : "layer" ""Buttons""
	/// @DnDSaveInfo : "objectid" "o_buyButton"
	newJokerButton = instance_create_layer(x + 16, y + 64 * (i +1), "Buttons", o_buyButton);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61B8065A
	/// @DnDParent : 03A72545
	/// @DnDArgument : "expr" "i"
	/// @DnDArgument : "var" "newJokerButton.index"
	newJokerButton.index = i;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 352E2AF3
	/// @DnDParent : 03A72545
	/// @DnDArgument : "expr" "newJoker.buyValue"
	/// @DnDArgument : "var" "newJokerButton.price"
	newJokerButton.price = newJoker.buyValue;
}

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 02514183
/// @DnDArgument : "cond" "i < 3"
for(i = 0; i < 3; i += 1) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4859E763
	/// @DnDParent : 02514183
	/// @DnDArgument : "xpos" "32 + (i * 96)"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "320"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newItem"
	/// @DnDArgument : "objectid" "o_consumable"
	/// @DnDArgument : "layer" ""Buttons""
	/// @DnDSaveInfo : "objectid" "o_consumable"
	newItem = instance_create_layer(x + 32 + (i * 96), y + 320, "Buttons", o_consumable);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0AB4FCC1
	/// @DnDParent : 02514183
	/// @DnDArgument : "xpos" "32 + (i * 96)"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "384"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newItemButton"
	/// @DnDArgument : "objectid" "o_buyButton"
	/// @DnDArgument : "layer" ""Buttons""
	/// @DnDSaveInfo : "objectid" "o_buyButton"
	newItemButton = instance_create_layer(x + 32 + (i * 96), y + 384, "Buttons", o_buyButton);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2EF06BAC
	/// @DnDParent : 02514183
	/// @DnDArgument : "expr" "i"
	/// @DnDArgument : "var" "newItemButton.index"
	newItemButton.index = i;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37D629BB
	/// @DnDParent : 02514183
	/// @DnDArgument : "expr" "newItem.buyValue"
	/// @DnDArgument : "var" "newItemButton.price"
	newItemButton.price = newItem.buyValue;
}