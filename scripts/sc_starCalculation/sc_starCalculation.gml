/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 33CAD480
/// @DnDArgument : "funcName" "starCalculation"
function starCalculation() {	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 59D170BB
	/// @DnDComment : spawn this one if enough stars
	/// @DnDParent : 33CAD480
	/// @DnDArgument : "xpos" "944"
	/// @DnDArgument : "ypos" "592"
	/// @DnDArgument : "objectid" "o_continueResultsButton"
	/// @DnDSaveInfo : "objectid" "o_continueResultsButton"
	instance_create_layer(944, 592, "Instances", o_continueResultsButton);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4003E8CC
	/// @DnDComment : spawn this one if not$(13_10)enough stars
	/// @DnDDisabled : 1
	/// @DnDParent : 33CAD480
	/// @DnDArgument : "xpos" "944"
	/// @DnDArgument : "ypos" "592"
	/// @DnDArgument : "objectid" "o_endResultsButton"
	/// @DnDSaveInfo : "objectid" "o_endResultsButton"}