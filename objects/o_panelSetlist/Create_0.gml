/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 24200B77
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < 3"
for(var i = 0; i < 3; i += 1) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
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

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 07B2995F
	/// @DnDParent : 24200B77
	/// @DnDArgument : "var" "randomSong"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "array_length(global.pack.songs) - 1"
	var randomSong = floor(random_range(0, array_length(global.pack.songs) - 1 + 1));

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

	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7BCDB965
	/// @DnDApplyTo : thisSong
	/// @DnDParent : 24200B77
	with(thisSong) {
	event_user(0);
	}
}