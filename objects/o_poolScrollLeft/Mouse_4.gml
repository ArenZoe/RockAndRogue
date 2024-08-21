/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0455E21B
/// @DnDArgument : "var" "global.Position"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "3"
if(!(global.Position <= 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 47ABA67F
	/// @DnDParent : 0455E21B
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.Position"
	global.Position += -1;

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 70582E3E
	/// @DnDParent : 0455E21B
	/// @DnDArgument : "cond" "i < instance_number(o_poolSelect)"
	for(i = 0; i < instance_number(o_poolSelect); i += 1) {
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 03767B42
		/// @DnDApplyTo : instance_find(o_poolSelect,i)
		/// @DnDParent : 70582E3E
		/// @DnDArgument : "value" "320"
		/// @DnDArgument : "value_relative" "1"
		with(instance_find(o_poolSelect,i)) {
		x += 320;
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 586FFA5C
		/// @DnDApplyTo : instance_find(o_downloadButton,i)
		/// @DnDParent : 70582E3E
		/// @DnDArgument : "value" "320"
		/// @DnDArgument : "value_relative" "1"
		with(instance_find(o_downloadButton,i)) {
		x += 320;
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 24B690C0
		/// @DnDApplyTo : instance_find(o_playButton,i)
		/// @DnDParent : 70582E3E
		/// @DnDArgument : "value" "320"
		/// @DnDArgument : "value_relative" "1"
		with(instance_find(o_playButton,i)) {
		x += 320;
		}
	}
}