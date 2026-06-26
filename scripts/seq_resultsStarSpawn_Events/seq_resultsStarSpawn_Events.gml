/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 79CE9178
/// @DnDArgument : "funcName" "moment_starSpawnComplete"
function moment_starSpawnComplete() {	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 33882085
	/// @DnDParent : 79CE9178
	/// @DnDArgument : "xpos" "990"
	/// @DnDArgument : "ypos" "365"
	/// @DnDArgument : "objectid" "o_resultsStar"
	/// @DnDSaveInfo : "objectid" "o_resultsStar"
	instance_create_layer(990, 365, "Instances", o_resultsStar);

	/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
	/// @DnDVersion : 1
	/// @DnDHash : 4C2B453B
	/// @DnDParent : 79CE9178
	/// @DnDArgument : "var" "self.elementID"
	layer_sequence_destroy(self.elementID);}