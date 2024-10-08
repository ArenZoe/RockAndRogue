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
/// @DnDInput : 3
/// @DnDArgument : "expr" "songIndex"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "songMoney"
/// @DnDArgument : "expr_2" "modifiers"
/// @DnDArgument : "var" "thisPlayButton.songIndex"
/// @DnDArgument : "var_1" "thisPlayButton.songMoney"
/// @DnDArgument : "var_2" "thisPlayButton.modifiers"
thisPlayButton.songIndex += songIndex;
thisPlayButton.songMoney = songMoney;
thisPlayButton.modifiers = modifiers;

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 3F19276C
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < array_length(modifiers)"
for(var i = 0; i < array_length(modifiers); i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2005BFBB
	/// @DnDComment : this will create modifiers in a for loop later on
	/// @DnDParent : 3F19276C
	/// @DnDArgument : "xpos" "448 - (i*120)"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "112"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "thisModifier"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "o_songModifier"
	/// @DnDArgument : "layer" ""Buttons""
	/// @DnDSaveInfo : "objectid" "o_songModifier"
	var thisModifier = instance_create_layer(x + 448 - (i*120), y + 112, "Buttons", o_songModifier);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62CCB52F
	/// @DnDParent : 3F19276C
	/// @DnDArgument : "expr" "modifiers[i]"
	/// @DnDArgument : "var" "thisModifier.songModifier"
	thisModifier.songModifier = modifiers[i];}