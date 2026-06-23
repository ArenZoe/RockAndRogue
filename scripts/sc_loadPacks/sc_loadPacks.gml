/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 37543B71
/// @DnDArgument : "funcName" "loadPacks"
function loadPacks() {	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 20D74E7A
	/// @DnDParent : 37543B71
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "i < array_length(global.packs)"
	for(var i = 0; i < array_length(global.packs); i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 69A46885
		/// @DnDParent : 20D74E7A
		/// @DnDArgument : "xpos" "200 + (i * 320)"
		/// @DnDArgument : "ypos" "200"
		/// @DnDArgument : "var" "thisPool"
		/// @DnDArgument : "objectid" "o_poolSelect"
		/// @DnDArgument : "layer" "layer_get_id("Pools")"
		/// @DnDSaveInfo : "objectid" "o_poolSelect"
		thisPool = instance_create_layer(200 + (i * 320), 200, layer_get_id("Pools"), o_poolSelect);
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 66A9F992
		/// @DnDApplyTo : thisPool
		/// @DnDParent : 20D74E7A
		with(thisPool) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 16FE29F9
			/// @DnDInput : 9
			/// @DnDParent : 66A9F992
			/// @DnDArgument : "expr" "global.packs[i].id"
			/// @DnDArgument : "expr_1" "global.packs[i].icon"
			/// @DnDArgument : "expr_2" "global.packs[i].title"
			/// @DnDArgument : "expr_3" "global.packs[i].description"
			/// @DnDArgument : "expr_4" "global.packs[i].downloadLink"
			/// @DnDArgument : "expr_5" "global.packs[i].startingMoney"
			/// @DnDArgument : "expr_6" "global.packs[i].difficulty"
			/// @DnDArgument : "expr_7" "sprite_add(global.packs[i].icon, 1, false, true, 0, 0)"
			/// @DnDArgument : "expr_8" "global.packs[i].id"
			/// @DnDArgument : "var" "poolID"
			/// @DnDArgument : "var_1" "poolIcon"
			/// @DnDArgument : "var_2" "poolTitle"
			/// @DnDArgument : "var_3" "poolDesc"
			/// @DnDArgument : "var_4" "downloadButton.downloadButtonLink"
			/// @DnDArgument : "var_5" "poolCurrency"
			/// @DnDArgument : "var_6" "poolDifficulty"
			/// @DnDArgument : "var_7" "poolIcon"
			/// @DnDArgument : "var_8" "playButton.buttonPackID"
			poolID = global.packs[i].id;
			poolIcon = global.packs[i].icon;
			poolTitle = global.packs[i].title;
			poolDesc = global.packs[i].description;
			downloadButton.downloadButtonLink = global.packs[i].downloadLink;
			poolCurrency = global.packs[i].startingMoney;
			poolDifficulty = global.packs[i].difficulty;
			poolIcon = sprite_add(global.packs[i].icon, 1, false, true, 0, 0);
			playButton.buttonPackID = global.packs[i].id;
		}}}