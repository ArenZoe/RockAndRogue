/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 06979B21
/// @DnDArgument : "xpos" "448"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "48"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "thisPlayButton"
/// @DnDArgument : "objectid" "o_songPlayButton"
/// @DnDArgument : "layer" ""Buttons""
/// @DnDSaveInfo : "objectid" "o_songPlayButton"
thisPlayButton = instance_create_layer(x + 448, y + 48, "Buttons", o_songPlayButton);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1670FE0F
/// @DnDArgument : "expr" "songIndex"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "thisPlayButton.songIndex"
thisPlayButton.songIndex += songIndex;

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 3F19276C
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < modifierCount"
for(var i = 0; i < modifierCount; i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2005BFBB
	/// @DnDComment : this will create modifiers in a for loop later on
	/// @DnDParent : 3F19276C
	/// @DnDArgument : "xpos" "464 - (i*112)"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "112"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "thisModifier"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "o_songModifier"
	/// @DnDArgument : "layer" ""Buttons""
	/// @DnDSaveInfo : "objectid" "o_songModifier"
	var thisModifier = instance_create_layer(x + 464 - (i*112), y + 112, "Buttons", o_songModifier);}