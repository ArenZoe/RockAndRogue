/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0E53B639
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "setGlobals"
function setGlobals() {	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 17ED518A
	/// @DnDParent : 0E53B639
	/// @DnDArgument : "value" "global.pack.startingMoney"
	/// @DnDArgument : "var" "gameMoney"
	global.gameMoney = global.pack.startingMoney;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 327D792B
	/// @DnDParent : 0E53B639
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "gameRound"
	global.gameRound = 1;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 7A011334
	/// @DnDParent : 0E53B639
	/// @DnDArgument : "value" "3"
	/// @DnDArgument : "var" "nextStars"
	global.nextStars = 3;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 19B48BE3
	/// @DnDParent : 0E53B639
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "shopRefreshCostDefault"
	global.shopRefreshCostDefault = 1;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 59A27731
	/// @DnDParent : 0E53B639
	/// @DnDArgument : "value" "global.shopRefreshCostDefault"
	/// @DnDArgument : "var" "shopRefreshCost"
	global.shopRefreshCost = global.shopRefreshCostDefault;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 6D4C00F0
	/// @DnDParent : 0E53B639
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "setlistRefreshCostDefault"
	global.setlistRefreshCostDefault = 1;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 2308BBF5
	/// @DnDParent : 0E53B639
	/// @DnDArgument : "value" "global.setlistRefreshCostDefault"
	/// @DnDArgument : "var" "setlistRefreshCost"
	global.setlistRefreshCost = global.setlistRefreshCostDefault;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 392F60D5
	/// @DnDInput : 3
	/// @DnDParent : 0E53B639
	/// @DnDArgument : "value" "[]"
	/// @DnDArgument : "value_1" "[]"
	/// @DnDArgument : "value_2" "[false,false,false,false]"
	/// @DnDArgument : "var" "jokerInventory"
	/// @DnDArgument : "var_1" "itemInventory"
	/// @DnDArgument : "var_2" "itemsActive"
	global.jokerInventory = [];
	global.itemInventory = [];
	global.itemsActive = [false,false,false,false];

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 15DBA926
	/// @DnDInput : 2
	/// @DnDParent : 0E53B639
	/// @DnDArgument : "value" "[]"
	/// @DnDArgument : "value_1" "[]"
	/// @DnDArgument : "var" "seenSongs"
	/// @DnDArgument : "var_1" "playedSongs"
	global.seenSongs = [];
	global.playedSongs = [];

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 2A44B6FE
	/// @DnDInput : 2
	/// @DnDParent : 0E53B639
	/// @DnDArgument : "value" "[]"
	/// @DnDArgument : "value_1" "[]"
	/// @DnDArgument : "var" "shopInventory"
	/// @DnDArgument : "var_1" "shopInventoryItems"
	global.shopInventory = [];
	global.shopInventoryItems = [];

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1ECC28E2
	/// @DnDParent : 0E53B639
	/// @DnDArgument : "value" "[]"
	/// @DnDArgument : "var" "playedSongsData"
	global.playedSongsData = [];

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 2EB3F9FB
	/// @DnDParent : 0E53B639
	/// @DnDArgument : "code" "var playData = {$(13_10)	money: 0,$(13_10)	index: 0,$(13_10)	modifiers: [],$(13_10)	scoreData: {$(13_10)		//fill in with CH's score file$(13_10)	}$(13_10)}"
	var playData = {
		money: 0,
		index: 0,
		modifiers: [],
		scoreData: {
			//fill in with CH's score file
		}
	}}