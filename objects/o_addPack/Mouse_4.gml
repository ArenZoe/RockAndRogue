/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 46A6C3C7
/// @DnDArgument : "code" "//load the rrpack file$(13_10)	var poolFile = get_open_filename("pack file|*.rrpack","");$(13_10)	if (poolFile =""){$(13_10)		exit;$(13_10)	}$(13_10)	$(13_10)	var file = file_text_open_read(poolFile);$(13_10)	//copy its contents into a string$(13_10)	var fileString = "";$(13_10)	var num = 0;$(13_10)	while (!file_text_eof(file))$(13_10)	{$(13_10)	    fileString = string_concat(fileString, file_text_readln(file));$(13_10)	}$(13_10)	file_text_close(file);$(13_10)	$(13_10)	var fileName = ""$(13_10)$(13_10)	for (var i = (string_last_pos("\\", poolFile) + 1); i < string_length(poolFile) + 1; i++){$(13_10)		fileName = string_concat(fileName,string_char_at(poolFile, i));	$(13_10)	}"
//load the rrpack file
	var poolFile = get_open_filename("pack file|*.rrpack","");
	if (poolFile =""){
		exit;
	}
	
	var file = file_text_open_read(poolFile);
	//copy its contents into a string
	var fileString = "";
	var num = 0;
	while (!file_text_eof(file))
	{
	    fileString = string_concat(fileString, file_text_readln(file));
	}
	file_text_close(file);
	
	var fileName = ""

	for (var i = (string_last_pos("\\", poolFile) + 1); i < string_length(poolFile) + 1; i++){
		fileName = string_concat(fileName,string_char_at(poolFile, i));	
	}

/// @DnDAction : YoYo Games.Buffers.Buffer_Create
/// @DnDVersion : 1
/// @DnDHash : 0C1592D1
/// @DnDArgument : "target" "newPack"
/// @DnDArgument : "target_temp" "1"
var newPack = buffer_create(64, buffer_grow, 1);

/// @DnDAction : YoYo Games.Buffers.Buffer_Write
/// @DnDVersion : 1
/// @DnDHash : 648CC0D2
/// @DnDArgument : "buffer" "newPack"
/// @DnDArgument : "value" "fileString"
buffer_write(newPack, buffer_string, string(fileString));

/// @DnDAction : YoYo Games.Files.Buffer_Save
/// @DnDVersion : 1
/// @DnDHash : 5645747B
/// @DnDArgument : "buffer" "newPack"
/// @DnDArgument : "filename" "string_concat(working_directory ,"songPacks\\" ,fileName)"
buffer_save(newPack, string_concat(working_directory ,"songPacks\\" ,fileName));

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 3751A3B7
/// @DnDDisabled : 1
/// @DnDArgument : "msg" "string_concat(working_directory ,"songPacks\\" ,fileName)"


/// @DnDAction : YoYo Games.Rooms.Restart_Room
/// @DnDVersion : 1
/// @DnDHash : 00603151
room_restart();