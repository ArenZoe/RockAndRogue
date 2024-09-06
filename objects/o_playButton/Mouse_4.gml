/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 07E3BEFA
/// @DnDArgument : "var" "x"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "100"
if(!(x < 100)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D19E8B2
	/// @DnDParent : 07E3BEFA
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "1100"
	if(!(x > 1100)){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 0D12FE47
		/// @DnDDisabled : 1
		/// @DnDParent : 7D19E8B2
		/// @DnDArgument : "msg" ""You picked pack with id: " + buttonPackID"
	
	
		/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 26202551
		/// @DnDParent : 7D19E8B2
		/// @DnDArgument : "init_temp" "1"
		/// @DnDArgument : "cond" "i < array_length(global.packs)"
		for(var i = 0; i < array_length(global.packs); i += 1) {	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 63845184
			/// @DnDParent : 26202551
			/// @DnDArgument : "var" "global.packs[i].id"
			/// @DnDArgument : "value" "buttonPackID"
			if(global.packs[i].id == buttonPackID){	/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 2E45BA45
				/// @DnDParent : 63845184
				/// @DnDArgument : "value" "global.packs[i]"
				/// @DnDArgument : "var" "pack"
				global.pack = global.packs[i];
			
				/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
				/// @DnDVersion : 1
				/// @DnDHash : 1995A245
				/// @DnDDisabled : 1
				/// @DnDParent : 63845184
				/// @DnDArgument : "msg" "global.pack"}}
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 5E03BD67
		/// @DnDParent : 7D19E8B2
		/// @DnDArgument : "value" "global.pack.startingMoney"
		/// @DnDArgument : "var" "gameMoney"
		global.gameMoney = global.pack.startingMoney;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 3011EFD2
		/// @DnDParent : 7D19E8B2
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "gameRound"
		global.gameRound = 1;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 79DF12C3
		/// @DnDParent : 7D19E8B2
		/// @DnDArgument : "value" "120"
		/// @DnDArgument : "var" "nextStars"
		global.nextStars = 120;
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 23E8D116
		/// @DnDParent : 7D19E8B2
		/// @DnDArgument : "room" "r_gameplay"
		/// @DnDSaveInfo : "room" "r_gameplay"
		room_goto(r_gameplay);}}