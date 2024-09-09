/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 2E786501
/// @DnDInput : 2
/// @DnDArgument : "value" "[]"
/// @DnDArgument : "value_1" "[]"
/// @DnDArgument : "var" "jokerInventory"
/// @DnDArgument : "var_1" "itemInventory"
global.jokerInventory = [];
global.itemInventory = [];

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 16FD4710
/// @DnDDisabled : 1
/// @DnDArgument : "cond" "i < 5"
/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1FB9C20C
/// @DnDDisabled : 1
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


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6CCF34FF
/// @DnDDisabled : 1
/// @DnDParent : 16FD4710
/// @DnDArgument : "expr" "i"
/// @DnDArgument : "var" "newJoker.jokerID"

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 14D6B388
/// @DnDDisabled : 1
/// @DnDArgument : "cond" "i < 3"
/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 520AD2C1
/// @DnDDisabled : 1
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


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 196791A9
/// @DnDDisabled : 1
/// @DnDParent : 14D6B388
/// @DnDArgument : "expr" "i"
/// @DnDArgument : "var" "newItem.ItemID"