/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 35CD70D7
/// @DnDArgument : "expr" "$FF1F1F9B"
/// @DnDArgument : "var" "renderColour"
renderColour = $FF1F1F9B;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 22102E87
/// @DnDApplyTo : {o_resultsText}
with(o_resultsText) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3C81B009
/// @DnDApplyTo : {o_endResultsButton}
with(o_endResultsButton) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 773B69BC
/// @DnDApplyTo : {o_resultsStar}
with(o_resultsStar) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4E75A824
/// @DnDApplyTo : {o_resultsTitle}
with(o_resultsTitle) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2A049618
/// @DnDArgument : "xpos" "200"
/// @DnDArgument : "ypos" "200"
/// @DnDArgument : "objectid" "o_endScreen"
/// @DnDSaveInfo : "objectid" "o_endScreen"
instance_create_layer(200, 200, "Instances", o_endScreen);