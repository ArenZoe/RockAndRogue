/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 5014A67E
/// @DnDArgument : "msg" ""Now playing " + global.pack.songs[songIndex].name"
show_debug_message(string("Now playing " + global.pack.songs[songIndex].name));

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 45129D69
/// @DnDArgument : "value" "+1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "gameRound"
global.gameRound += +1;

/// @DnDAction : YoYo Games.Rooms.Restart_Room
/// @DnDVersion : 1
/// @DnDHash : 2445BF0D
room_restart();