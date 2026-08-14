/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 1C8C17C8
/// @DnDArgument : "script" "sc_msToTimestamp"
/// @DnDSaveInfo : "script" "sc_msToTimestamp"
script_execute(sc_msToTimestamp);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 687FE3C0
/// @DnDArgument : "value" "true"
/// @DnDArgument : "var" "buttonsActive"
global.buttonsActive = true;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 12632045
/// @DnDArgument : "expr" "global.enableAnimatedBGs"
/// @DnDArgument : "not" "1"
if(!(global.enableAnimatedBGs)){	/// @DnDAction : YoYo Games.Layers.Layer_Set_Visible
	/// @DnDVersion : 1
	/// @DnDHash : 5DA2E03D
	/// @DnDParent : 12632045
	/// @DnDArgument : "layer" ""BG_Dark""
	layer_set_visible("BG_Dark", 0);

	/// @DnDAction : YoYo Games.Layers.Layer_Set_Visible
	/// @DnDVersion : 1
	/// @DnDHash : 7D6CDEE7
	/// @DnDParent : 12632045
	/// @DnDArgument : "layer" ""BG_Blur""
	layer_set_visible("BG_Blur", 0);

	/// @DnDAction : YoYo Games.Layers.Layer_Set_Visible
	/// @DnDVersion : 1
	/// @DnDHash : 38B64905
	/// @DnDParent : 12632045
	/// @DnDArgument : "layer" ""Background""
	layer_set_visible("Background", 0);}