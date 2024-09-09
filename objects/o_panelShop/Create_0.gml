/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2FE2A35C
/// @DnDInput : 2
/// @DnDArgument : "expr" "[global.jokers.testJoker1,global.jokers.testJoker2,global.jokers.testJoker3,global.jokers.testJoker4]"
/// @DnDArgument : "expr_1" "[global.items.testItem1,global.items.testItem2,global.items.testItem3]"
/// @DnDArgument : "var" "global.shopInventory"
/// @DnDArgument : "var_1" "global.shopInventoryItems"
global.shopInventory = [global.jokers.testJoker1,global.jokers.testJoker2,global.jokers.testJoker3,global.jokers.testJoker4];
global.shopInventoryItems = [global.items.testItem1,global.items.testItem2,global.items.testItem3];

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 03A72545
/// @DnDArgument : "cond" "i < array_length(global.shopInventory)"
for(i = 0; i < array_length(global.shopInventory); i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
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

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12179321
	/// @DnDInput : 7
	/// @DnDParent : 03A72545
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "global.shopInventory[i].name"
	/// @DnDArgument : "expr_2" "global.shopInventory[i].description"
	/// @DnDArgument : "expr_3" "global.shopInventory[i].buyValue"
	/// @DnDArgument : "expr_4" "global.shopInventory[i].sellValue"
	/// @DnDArgument : "expr_5" "global.shopInventory[i].icon"
	/// @DnDArgument : "expr_6" "newJoker.icon"
	/// @DnDArgument : "var" "newJoker.inShop"
	/// @DnDArgument : "var_1" "newJoker.name"
	/// @DnDArgument : "var_2" "newJoker.description"
	/// @DnDArgument : "var_3" "newJoker.buyValue"
	/// @DnDArgument : "var_4" "newJoker.sellValue"
	/// @DnDArgument : "var_5" "newJoker.icon"
	/// @DnDArgument : "var_6" "newJoker.sprite_index"
	newJoker.inShop = true;
	newJoker.name = global.shopInventory[i].name;
	newJoker.description = global.shopInventory[i].description;
	newJoker.buyValue = global.shopInventory[i].buyValue;
	newJoker.sellValue = global.shopInventory[i].sellValue;
	newJoker.icon = global.shopInventory[i].icon;
	newJoker.sprite_index = newJoker.icon;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4EDB8DB2
	/// @DnDParent : 03A72545
	/// @DnDArgument : "xpos" "16"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "64 * (i +1)"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newJokerButton"
	/// @DnDArgument : "objectid" "o_buyJokerButton"
	/// @DnDArgument : "layer" ""Buttons""
	/// @DnDSaveInfo : "objectid" "o_buyJokerButton"
	newJokerButton = instance_create_layer(x + 16, y + 64 * (i +1), "Buttons", o_buyJokerButton);

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
	/// @DnDInput : 2
	/// @DnDParent : 03A72545
	/// @DnDArgument : "expr" "newJoker.buyValue"
	/// @DnDArgument : "expr_1" "newJoker"
	/// @DnDArgument : "var" "newJokerButton.price"
	/// @DnDArgument : "var_1" "newJokerButton.jokerReference"
	newJokerButton.price = newJoker.buyValue;
	newJokerButton.jokerReference = newJoker;}

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 02514183
/// @DnDArgument : "cond" "i < array_length(global.shopInventoryItems)"
for(i = 0; i < array_length(global.shopInventoryItems); i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4859E763
	/// @DnDParent : 02514183
	/// @DnDArgument : "xpos" "32 + (i * 96)"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "320"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newItem"
	/// @DnDArgument : "objectid" "o_consumable"
	/// @DnDArgument : "layer" ""Inventory""
	/// @DnDSaveInfo : "objectid" "o_consumable"
	newItem = instance_create_layer(x + 32 + (i * 96), y + 320, "Inventory", o_consumable);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 43ACB3E8
	/// @DnDInput : 7
	/// @DnDParent : 02514183
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "global.shopInventoryItems[i].name"
	/// @DnDArgument : "expr_2" "global.shopInventoryItems[i].description"
	/// @DnDArgument : "expr_3" "global.shopInventoryItems[i].buyValue"
	/// @DnDArgument : "expr_4" "global.shopInventoryItems[i].sellValue"
	/// @DnDArgument : "expr_5" "global.shopInventoryItems[i].icon"
	/// @DnDArgument : "expr_6" "newItem.icon"
	/// @DnDArgument : "var" "newItem.inShop"
	/// @DnDArgument : "var_1" "newItem.name"
	/// @DnDArgument : "var_2" "newItem.description"
	/// @DnDArgument : "var_3" "newItem.buyValue"
	/// @DnDArgument : "var_4" "newItem.sellValue"
	/// @DnDArgument : "var_5" "newItem.icon"
	/// @DnDArgument : "var_6" "newItem.sprite_index"
	newItem.inShop = true;
	newItem.name = global.shopInventoryItems[i].name;
	newItem.description = global.shopInventoryItems[i].description;
	newItem.buyValue = global.shopInventoryItems[i].buyValue;
	newItem.sellValue = global.shopInventoryItems[i].sellValue;
	newItem.icon = global.shopInventoryItems[i].icon;
	newItem.sprite_index = newItem.icon;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0AB4FCC1
	/// @DnDParent : 02514183
	/// @DnDArgument : "xpos" "32 + (i * 96)"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "384"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newItemButton"
	/// @DnDArgument : "objectid" "o_buyConsumableButton"
	/// @DnDArgument : "layer" ""Buttons""
	/// @DnDSaveInfo : "objectid" "o_buyConsumableButton"
	newItemButton = instance_create_layer(x + 32 + (i * 96), y + 384, "Buttons", o_buyConsumableButton);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 13C69B2B
	/// @DnDParent : 02514183
	/// @DnDArgument : "expr" "i"
	/// @DnDArgument : "var" "newItemButton.index"
	newItemButton.index = i;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F04C85C
	/// @DnDInput : 2
	/// @DnDParent : 02514183
	/// @DnDArgument : "expr" "newItem.buyValue"
	/// @DnDArgument : "expr_1" "newItem"
	/// @DnDArgument : "var" "newItemButton.price"
	/// @DnDArgument : "var_1" "newItemButton.itemReference"
	newItemButton.price = newItem.buyValue;
	newItemButton.itemReference = newItem;}