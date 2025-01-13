/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 06EBA248
/// @DnDApplyTo : {o_resultsText}
with(o_resultsText) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2B8646DB
/// @DnDApplyTo : {o_continueResultsButton}
with(o_continueResultsButton) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 14F0C3A1
/// @DnDArgument : "xpos" "640"
/// @DnDArgument : "ypos" "32"
/// @DnDArgument : "objectid" "o_panelSetlist"
/// @DnDSaveInfo : "objectid" "o_panelSetlist"
instance_create_layer(640, 32, "Instances", o_panelSetlist);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3A436979
/// @DnDArgument : "xpos" "304"
/// @DnDArgument : "ypos" "160"
/// @DnDArgument : "objectid" "o_panelShop"
/// @DnDSaveInfo : "objectid" "o_panelShop"
instance_create_layer(304, 160, "Instances", o_panelShop);