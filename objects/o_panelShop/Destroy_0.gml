/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 173593B9
/// @DnDApplyTo : {o_buyConsumableButton}
with(o_buyConsumableButton) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1AE5196F
/// @DnDApplyTo : {o_buyJokerButton}
with(o_buyJokerButton) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 360A65A7
/// @DnDApplyTo : {o_shopRefresh}
with(o_shopRefresh) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 47D9AC94
/// @DnDApplyTo : {o_setlistRefresh}
with(o_setlistRefresh) instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 4A2E5E27
/// @DnDApplyTo : {o_joker}
with(o_joker) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37E022CB
	/// @DnDParent : 4A2E5E27
	/// @DnDArgument : "var" "self.inShop"
	/// @DnDArgument : "value" "true"
	if(self.inShop == true){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6835E8B4
		/// @DnDParent : 37E022CB
		instance_destroy();}
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 48388857
/// @DnDApplyTo : {o_consumable}
with(o_consumable) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61120DDF
	/// @DnDParent : 48388857
	/// @DnDArgument : "var" "self.inShop"
	/// @DnDArgument : "value" "true"
	if(self.inShop == true){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1698492F
		/// @DnDParent : 61120DDF
		instance_destroy();}
}