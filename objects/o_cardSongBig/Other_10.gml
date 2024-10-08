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
	/// @DnDArgument : "xpos" "744 - (i*199)"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "186"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "thisModifier"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "o_songModifierBig"
	/// @DnDArgument : "layer" ""Buttons""
	/// @DnDSaveInfo : "objectid" "o_songModifierBig"
	var thisModifier = instance_create_layer(x + 744 - (i*199), y + 186, "Buttons", o_songModifierBig);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62CCB52F
	/// @DnDParent : 3F19276C
	/// @DnDArgument : "expr" "modifiers[i]"
	/// @DnDArgument : "var" "thisModifier.songModifier"
	thisModifier.songModifier = modifiers[i];}