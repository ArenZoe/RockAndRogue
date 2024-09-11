/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 5014A67E
/// @DnDArgument : "msg" ""Now playing " + global.pack.songs[songIndex].name"
show_debug_message(string("Now playing " + global.pack.songs[songIndex].name));

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 45129D69
/// @DnDArgument : "value" "+1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "gameRound"
global.gameRound += +1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 28C360CA
/// @DnDArgument : "expr" "+songMoney"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "global.gameMoney"
global.gameMoney += +songMoney;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3EEF723D
/// @DnDArgument : "value" "global.setlistRefreshCostDefault"
/// @DnDArgument : "var" "global.setlistRefreshCost"
global.setlistRefreshCost = global.setlistRefreshCostDefault;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 35B65C79
/// @DnDArgument : "value" "global.shopRefreshCostDefault"
/// @DnDArgument : "var" "global.shopRefreshCost"
global.shopRefreshCost = global.shopRefreshCostDefault;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6536D7C7
/// @DnDApplyTo : {o_panelSetlist}
with(o_panelSetlist) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 22816E8D
/// @DnDApplyTo : {o_panelShop}
with(o_panelShop) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3EE0CA4D
/// @DnDArgument : "xpos" "640"
/// @DnDArgument : "ypos" "32"
/// @DnDArgument : "objectid" "o_panelSetlist"
/// @DnDSaveInfo : "objectid" "o_panelSetlist"
instance_create_layer(640, 32, "Instances", o_panelSetlist);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 57056838
/// @DnDArgument : "xpos" "304"
/// @DnDArgument : "ypos" "160"
/// @DnDArgument : "objectid" "o_panelShop"
/// @DnDSaveInfo : "objectid" "o_panelShop"
instance_create_layer(304, 160, "Instances", o_panelShop);