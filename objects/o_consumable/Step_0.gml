/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28B9C02A
/// @DnDArgument : "var" "showDesc"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "showDescCap"
if(showDesc < showDescCap){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7738BB17
	/// @DnDParent : 28B9C02A
	/// @DnDArgument : "var" "showDesc"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "op" "1"
	if(!(showDesc < 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53CCEA9C
		/// @DnDParent : 7738BB17
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "showDesc"
		showDesc += -1;}}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 53FEBD22
/// @DnDInput : 2
/// @DnDArgument : "expr" "+0.6"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "-0.4"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "shineAngle1"
/// @DnDArgument : "var_1" "shineAngle2"
shineAngle1 += +0.6;
shineAngle2 += -0.4;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E2621CF
/// @DnDArgument : "var" "shineAngle1"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "360"
if(shineAngle1 > 360){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B1B8D7E
	/// @DnDParent : 1E2621CF
	/// @DnDArgument : "var" "shineAngle1"
	shineAngle1 = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 35259FE8
/// @DnDArgument : "var" "shineAngle2"
/// @DnDArgument : "op" "1"
if(shineAngle2 < 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7C039F96
	/// @DnDParent : 35259FE8
	/// @DnDArgument : "expr" "360"
	/// @DnDArgument : "var" "shineAngle2"
	shineAngle2 = 360;}