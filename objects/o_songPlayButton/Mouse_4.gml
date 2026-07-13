/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 5014A67E
/// @DnDArgument : "msg" ""Now playing " + global.pack.songs[songIndex].name"
show_debug_message(string("Now playing " + global.pack.songs[songIndex].name));

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2E0463D4
/// @DnDInput : 2
/// @DnDArgument : "function" "array_push"
/// @DnDArgument : "arg" "global.playedSongs"
/// @DnDArgument : "arg_1" "songIndex"
array_push(global.playedSongs, songIndex);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3EEF723D
/// @DnDArgument : "value" "global.setlistRefreshCostDefault"
/// @DnDArgument : "var" "global.setlistRefreshCost"
global.setlistRefreshCost = global.setlistRefreshCostDefault;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 35B65C79
/// @DnDArgument : "value" "global.shopRefreshCostDefault"
/// @DnDArgument : "var" "global.shopRefreshCost"
global.shopRefreshCost = global.shopRefreshCostDefault;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 22816E8D
/// @DnDApplyTo : {o_panelShop}
with(o_panelShop) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6536D7C7
/// @DnDApplyTo : {o_panelSetlist}
with(o_panelSetlist) instance_destroy();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3F843B9C
/// @DnDBreak : 1

/// @DnDArgument : "code" "array_push(global.playedSongsData,{$(13_10)	money: songMoney,$(13_10)	index: songIndex,$(13_10)	modifiers: modifiers,$(13_10)	scoreData: {$(13_10)		//fill in with CH's score file$(13_10)	}$(13_10)});"
array_push(global.playedSongsData,{
	money: songMoney,
	index: songIndex,
	modifiers: modifiers,
	scoreData: {
		//fill in with CH's score file
	}
});

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1A557E11
/// @DnDArgument : "xpos" "960"
/// @DnDArgument : "ypos" "75"
/// @DnDArgument : "objectid" "o_NowPlayingText"
/// @DnDSaveInfo : "objectid" "o_NowPlayingText"
instance_create_layer(960, 75, "Instances", o_NowPlayingText);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2070D611
/// @DnDArgument : "xpos" "302"
/// @DnDArgument : "ypos" "160"
/// @DnDArgument : "var" "newCardSong"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "o_cardSongBig"
/// @DnDArgument : "layer" ""SongCards""
/// @DnDSaveInfo : "objectid" "o_cardSongBig"
var newCardSong = instance_create_layer(302, 160, "SongCards", o_cardSongBig);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6999D754
/// @DnDArgument : "xpos" "302"
/// @DnDArgument : "ypos" "480"
/// @DnDArgument : "var" "modifiersElaborate"
/// @DnDArgument : "objectid" "o_modifiersElaborate"
/// @DnDSaveInfo : "objectid" "o_modifiersElaborate"
modifiersElaborate = instance_create_layer(302, 480, "Instances", o_modifiersElaborate);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6709C928
/// @DnDInput : 5
/// @DnDArgument : "expr" "songIndex"
/// @DnDArgument : "expr_1" "songMoney"
/// @DnDArgument : "expr_2" "modifiers"
/// @DnDArgument : "expr_3" "sprite_add(global.pack.songs[songIndex].albumArt, 1, false, true, 0, 0)"
/// @DnDArgument : "expr_4" "modifiers"
/// @DnDArgument : "var" "newCardSong.songIndex"
/// @DnDArgument : "var_1" "newCardSong.songMoney"
/// @DnDArgument : "var_2" "newCardSong.modifiers"
/// @DnDArgument : "var_3" "newCardSong.songAlbum"
/// @DnDArgument : "var_4" "modifiersElaborate.songModifier"
newCardSong.songIndex = songIndex;
newCardSong.songMoney = songMoney;
newCardSong.modifiers = modifiers;
newCardSong.songAlbum = sprite_add(global.pack.songs[songIndex].albumArt, 1, false, true, 0, 0);
modifiersElaborate.songModifier = modifiers;

/// @DnDAction : YoYo Games.Instances.Call_User_Event
/// @DnDVersion : 1
/// @DnDHash : 1A87264D
/// @DnDApplyTo : {o_cardSongBig}
with(o_cardSongBig) {
event_user(0);
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5C45EA8D
/// @DnDArgument : "xpos" "944"
/// @DnDArgument : "ypos" "592"
/// @DnDArgument : "objectid" "o_continueButton"
/// @DnDArgument : "layer" ""Buttons""
/// @DnDSaveInfo : "objectid" "o_continueButton"
instance_create_layer(944, 592, "Buttons", o_continueButton);