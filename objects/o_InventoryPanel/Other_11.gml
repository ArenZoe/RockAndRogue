/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 2082D675
/// @DnDArgument : "msg" ""inventory updated""
show_debug_message(string("inventory updated"));

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2F472502
/// @DnDArgument : "function" "instance_deactivate_object"
/// @DnDArgument : "arg" "o_useButton"
instance_deactivate_object(o_useButton);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 410C6DF3
/// @DnDArgument : "function" "instance_deactivate_object"
/// @DnDArgument : "arg" "o_sellButton"
instance_deactivate_object(o_sellButton);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 75D8C7D0
/// @DnDArgument : "function" "instance_deactivate_object"
/// @DnDArgument : "arg" "o_sortDown"
instance_deactivate_object(o_sortDown);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 53173DF7
/// @DnDArgument : "function" "instance_deactivate_object"
/// @DnDArgument : "arg" "o_sortUp"
instance_deactivate_object(o_sortUp);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 2D4CB67B
/// @DnDApplyTo : {o_joker}
with(o_joker) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3FBE34EE
	/// @DnDParent : 2D4CB67B
	/// @DnDArgument : "var" "self.inShop"
	/// @DnDArgument : "value" "false"
	if(self.inShop == false){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 37BC7B33
		/// @DnDParent : 3FBE34EE
		instance_destroy();}
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 59E5598F
/// @DnDApplyTo : {o_consumable}
with(o_consumable) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0706C593
	/// @DnDParent : 59E5598F
	/// @DnDArgument : "var" "self.inShop"
	/// @DnDArgument : "value" "false"
	if(self.inShop == false){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5F7E18CF
		/// @DnDParent : 0706C593
		instance_destroy();}
}

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 1E25A7FF
/// @DnDArgument : "cond" "i < array_length(global.jokerInventory)"
for(i = 0; i < array_length(global.jokerInventory); i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4B33C2C3
	/// @DnDParent : 1E25A7FF
	/// @DnDArgument : "xpos" "120"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "64 * (i+1) + 24"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newJoker"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "o_joker"
	/// @DnDArgument : "layer" ""Inventory""
	/// @DnDSaveInfo : "objectid" "o_joker"
	var newJoker = instance_create_layer(x + 120, y + 64 * (i+1) + 24, "Inventory", o_joker);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 783A5065
	/// @DnDInput : 11
	/// @DnDParent : 1E25A7FF
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" "global.jokerInventory[i].name"
	/// @DnDArgument : "expr_2" "global.jokerInventory[i].description"
	/// @DnDArgument : "expr_3" "global.jokerInventory[i].buyValue"
	/// @DnDArgument : "expr_4" "global.jokerInventory[i].sellValue"
	/// @DnDArgument : "expr_5" "global.jokerInventory[i].icon"
	/// @DnDArgument : "expr_6" "global.jokerInventory[i].icon"
	/// @DnDArgument : "expr_7" "i"
	/// @DnDArgument : "expr_8" "global.jokerInventory[i].type"
	/// @DnDArgument : "expr_9" "global.jokerInventory[i].rarity"
	/// @DnDArgument : "expr_10" "global.jokerInventory[i].count"
	/// @DnDArgument : "var" "newJoker.inShop"
	/// @DnDArgument : "var_1" "newJoker.name"
	/// @DnDArgument : "var_2" "newJoker.description"
	/// @DnDArgument : "var_3" "newJoker.buyValue"
	/// @DnDArgument : "var_4" "newJoker.sellValue"
	/// @DnDArgument : "var_5" "newJoker.icon"
	/// @DnDArgument : "var_6" "newJoker.sprite_index"
	/// @DnDArgument : "var_7" "newJoker.index"
	/// @DnDArgument : "var_8" "newJoker.type"
	/// @DnDArgument : "var_9" "newJoker.rarity"
	/// @DnDArgument : "var_10" "newJoker.count"
	newJoker.inShop = false;
	newJoker.name = global.jokerInventory[i].name;
	newJoker.description = global.jokerInventory[i].description;
	newJoker.buyValue = global.jokerInventory[i].buyValue;
	newJoker.sellValue = global.jokerInventory[i].sellValue;
	newJoker.icon = global.jokerInventory[i].icon;
	newJoker.sprite_index = global.jokerInventory[i].icon;
	newJoker.index = i;
	newJoker.type = global.jokerInventory[i].type;
	newJoker.rarity = global.jokerInventory[i].rarity;
	newJoker.count = global.jokerInventory[i].count;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 46DB0B6F
	/// @DnDParent : 1E25A7FF
	/// @DnDArgument : "msg" ""respawned joker""
	show_debug_message(string("respawned joker"));}

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 4FEEB990
/// @DnDArgument : "cond" "i < array_length(global.itemInventory)"
for(i = 0; i < array_length(global.itemInventory); i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3737A42F
	/// @DnDParent : 4FEEB990
	/// @DnDArgument : "xpos" "40 + (80 * i)"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "424"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newItem"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "o_consumable"
	/// @DnDArgument : "layer" ""Inventory""
	/// @DnDSaveInfo : "objectid" "o_consumable"
	var newItem = instance_create_layer(x + 40 + (80 * i), y + 424, "Inventory", o_consumable);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50A086D8
	/// @DnDInput : 9
	/// @DnDParent : 4FEEB990
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" "global.itemInventory[i].name"
	/// @DnDArgument : "expr_2" "global.itemInventory[i].description"
	/// @DnDArgument : "expr_3" "global.itemInventory[i].buyValue"
	/// @DnDArgument : "expr_4" "global.itemInventory[i].sellValue"
	/// @DnDArgument : "expr_5" "global.itemInventory[i].icon"
	/// @DnDArgument : "expr_6" "newItem.icon"
	/// @DnDArgument : "expr_7" "i"
	/// @DnDArgument : "expr_8" "global.itemsActive[newItem.index]"
	/// @DnDArgument : "var" "newItem.inShop"
	/// @DnDArgument : "var_1" "newItem.name"
	/// @DnDArgument : "var_2" "newItem.description"
	/// @DnDArgument : "var_3" "newItem.buyValue"
	/// @DnDArgument : "var_4" "newItem.sellValue"
	/// @DnDArgument : "var_5" "newItem.icon"
	/// @DnDArgument : "var_6" "newItem.sprite_index"
	/// @DnDArgument : "var_7" "newItem.index"
	/// @DnDArgument : "var_8" "newItem.isActive"
	newItem.inShop = false;
	newItem.name = global.itemInventory[i].name;
	newItem.description = global.itemInventory[i].description;
	newItem.buyValue = global.itemInventory[i].buyValue;
	newItem.sellValue = global.itemInventory[i].sellValue;
	newItem.icon = global.itemInventory[i].icon;
	newItem.sprite_index = newItem.icon;
	newItem.index = i;
	newItem.isActive = global.itemsActive[newItem.index];

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 598BA3AA
	/// @DnDParent : 4FEEB990
	/// @DnDArgument : "msg" ""respawned item""
	show_debug_message(string("respawned item"));}