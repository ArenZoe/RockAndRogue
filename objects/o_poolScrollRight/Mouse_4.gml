/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 394C8209
/// @DnDArgument : "var" "global.Position"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "array_length(global.packs) - 3"
if(!(global.Position >= array_length(global.packs) - 3))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C20F61A
	/// @DnDParent : 394C8209
	/// @DnDArgument : "expr" "+1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.Position"
	global.Position += +1;

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 3B51B872
	/// @DnDParent : 394C8209
	/// @DnDArgument : "cond" "i < instance_number(o_poolSelect)"
	for(i = 0; i < instance_number(o_poolSelect); i += 1) {
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 28DA8431
		/// @DnDApplyTo : instance_find(o_poolSelect,i)
		/// @DnDParent : 3B51B872
		/// @DnDArgument : "value" "-320"
		/// @DnDArgument : "value_relative" "1"
		with(instance_find(o_poolSelect,i)) {
		x += -320;
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 39510F3F
		/// @DnDApplyTo : instance_find(o_downloadButton,i)
		/// @DnDParent : 3B51B872
		/// @DnDArgument : "value" "-320"
		/// @DnDArgument : "value_relative" "1"
		with(instance_find(o_downloadButton,i)) {
		x += -320;
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 591F1E62
		/// @DnDApplyTo : instance_find(o_playButton,i)
		/// @DnDParent : 3B51B872
		/// @DnDArgument : "value" "-320"
		/// @DnDArgument : "value_relative" "1"
		with(instance_find(o_playButton,i)) {
		x += -320;
		}
	}
}