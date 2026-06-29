/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 35CD70D7
/// @DnDArgument : "expr" "$FF1F1F9B"
/// @DnDArgument : "var" "renderColour"
renderColour = $FF1F1F9B;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 22102E87
/// @DnDApplyTo : {o_endScreen}
with(o_endScreen) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3C81B009
instance_destroy();

/// @DnDAction : YoYo Games.Game.Restart_Game
/// @DnDVersion : 1
/// @DnDHash : 1BE40124
game_restart();