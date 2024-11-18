/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 3ADEAC2D
/// @DnDArgument : "colour" "$C8343434"
image_blend = $C8343434 & $ffffff;
image_alpha = ($C8343434 >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 3AB2D0C0
/// @DnDArgument : "xscale" "9.5"
/// @DnDArgument : "yscale" "10.25"
image_xscale = 9.5;image_yscale = 10.25;

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 24200B77
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < 3"
for(var i = 0; i < 3; i += 1) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5A26B714
	/// @DnDParent : 24200B77
	/// @DnDArgument : "xpos" "16"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "80 + (i*192)"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "thisSong"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "o_cardSong"
	/// @DnDArgument : "layer" ""SongCards""
	/// @DnDSaveInfo : "objectid" "o_cardSong"
	var thisSong = instance_create_layer(x + 16, y + 80 + (i*192), "SongCards", o_cardSong);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 306AAC00
	/// @DnDInput : 2
	/// @DnDParent : 24200B77
	/// @DnDArgument : "var" "randomSong"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "selectSong"
	/// @DnDArgument : "arg" "global.gameRound"
	/// @DnDArgument : "arg_1" "i"
	var randomSong = selectSong(global.gameRound, i);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32B61F3C
	/// @DnDComment : //temp assignmenbt$(13_10)=
	/// @DnDParent : 24200B77
	/// @DnDArgument : "expr" "randomSong"
	/// @DnDArgument : "var" "thisSong.songIndex"
	thisSong.songIndex = randomSong;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50BA58C7
	/// @DnDParent : 24200B77
	/// @DnDArgument : "expr" "sprite_add(global.pack.songs[thisSong.songIndex].albumArt, 1, false, true, 0, 0)"
	/// @DnDArgument : "var" "thisSong.songAlbum"
	thisSong.songAlbum = sprite_add(global.pack.songs[thisSong.songIndex].albumArt, 1, false, true, 0, 0);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0C9F4D54
	/// @DnDInput : 2
	/// @DnDParent : 24200B77
	/// @DnDArgument : "var" "thisSong.modifiers"
	/// @DnDArgument : "function" "selectModifiers"
	/// @DnDArgument : "arg" "global.gameRound"
	/// @DnDArgument : "arg_1" "i"
	thisSong.modifiers = selectModifiers(global.gameRound, i);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A7542ED
	/// @DnDParent : 24200B77
	/// @DnDArgument : "expr" "i+1 + array_length(thisSong.modifiers) + global.pack.songs[thisSong.songIndex].intensity"
	/// @DnDArgument : "var" "thisSong.songMoney"
	thisSong.songMoney = i+1 + array_length(thisSong.modifiers) + global.pack.songs[thisSong.songIndex].intensity;

	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7BCDB965
	/// @DnDApplyTo : thisSong
	/// @DnDParent : 24200B77
	with(thisSong) {
	event_user(0);
	}}