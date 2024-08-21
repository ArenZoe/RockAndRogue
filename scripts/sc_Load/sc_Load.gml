/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2D76B227
/// @DnDArgument : "code" "$(13_10)$(13_10)//Grab all installed song packs$(13_10)var songPackFilePaths = [];$(13_10)var songPackFilePath = file_find_first(working_directory + "songPacks/*.rrpack", fa_none);$(13_10)$(13_10)while (songPackFilePath != "")$(13_10){$(13_10)    array_push(songPackFilePaths, songPackFilePath);$(13_10)$(13_10)    songPackFilePath = file_find_next();$(13_10)}$(13_10)$(13_10)file_find_close(); $(13_10)//show_debug_message(songPackFilePaths);$(13_10)$(13_10)global.packs = [];$(13_10)for (var i = 0; i < array_length(songPackFilePaths); i++;){$(13_10)	//load the rrpack file$(13_10)	var poolFile = working_directory + "songPacks/" + songPackFilePaths[i];$(13_10)	var file = file_text_open_read(poolFile);$(13_10)	if (file = -1){exit};$(13_10)	$(13_10)	//copy its contents into a string$(13_10)	var fileString = "";$(13_10)	var num = 0;$(13_10)	while (!file_text_eof(file))$(13_10)	{$(13_10)	    fileString = string_concat(fileString, file_text_readln(file));$(13_10)	}$(13_10)	file_text_close(file);$(13_10)	$(13_10)	//parse the json string$(13_10)	//show_debug_message(fileString);$(13_10)	$(13_10)	var data;$(13_10)	try {$(13_10)		data = json_parse(fileString);$(13_10)	} catch (err) {$(13_10)		// TODO: show error message to user for invalid pack file$(13_10)		continue;$(13_10)	}$(13_10)	$(13_10)	//validate the file$(13_10)	if ($(13_10)		!struct_exists(data, "id") or !is_string(data.id) or string_length(data.id) = 0 or$(13_10)		!struct_exists(data, "icon") or !is_string(data.icon) or string_length(data.icon) = 0 or$(13_10)		!struct_exists(data, "title") or !is_string(data.title) or string_length(data.title) = 0 or$(13_10)		!struct_exists(data, "description") or !is_string(data.description) or string_length(data.description) = 0 or$(13_10)		!struct_exists(data, "downloadLink") or !is_string(data.downloadLink) or string_length(data.downloadLink) = 0 or$(13_10)		!struct_exists(data, "startingMoney") or !is_real(data.startingMoney) or$(13_10)		!struct_exists(data, "difficulty") or !is_string(data.difficulty) or string_length(data.difficulty) = 0 or$(13_10)		!struct_exists(data, "songs") or !is_array(data.songs)$(13_10)	){$(13_10)		continue;	$(13_10)	}$(13_10)	$(13_10)	//validate the songs$(13_10)	var invalidSongs = false$(13_10)	for (var j = 0; j < array_length(data.songs); j++;){$(13_10)		if(!struct_exists(data.songs[j], "name") or !is_string(data.songs[j].name) or string_length(data.songs[j].name) = 0 or$(13_10)		!struct_exists(data.songs[j], "artist") or !is_string(data.songs[j].artist) or string_length(data.songs[j].artist) = 0 or$(13_10)		!struct_exists(data.songs[j], "charter") or !is_string(data.songs[j].charter) or string_length(data.songs[j].charter) = 0 or$(13_10)		!struct_exists(data.songs[j], "genre") or !is_string(data.songs[j].genre) or string_length(data.songs[j].genre) = 0 or$(13_10)		!struct_exists(data.songs[j], "length") or !is_real(data.songs[j].length) or$(13_10)		!struct_exists(data.songs[j], "albumArt") or !is_string(data.songs[j].albumArt) or string_length(data.songs[j].albumArt) = 0 or$(13_10)		!struct_exists(data.songs[j], "instrument") or !is_string(data.songs[j].instrument) or string_length(data.songs[j].instrument) = 0 or$(13_10)		!struct_exists(data.songs[j], "intensity") or !is_real(data.songs[j].intensity) or$(13_10)		!struct_exists(data.songs[j], "bucket") or !is_real(data.songs[j].bucket)$(13_10)		){$(13_10)			invalidSongs = true;$(13_10)		}$(13_10)		$(13_10)	}$(13_10)	if (invalidSongs)$(13_10)$(13_10)		{show_debug_message("wug");$(13_10)			continue;}$(13_10)	$(13_10)	//copy the list of packs into a global variable$(13_10)	array_push(global.packs, data);$(13_10)	$(13_10)}$(13_10)$(13_10)show_debug_message(global.packs);$(13_10)$(13_10)//for each parsed song pack, spawn a pack button in the menu$(13_10)$(13_10)for (var i = 0; i < array_length(global.packs); i++;){$(13_10)	$(13_10)	$(13_10)}$(13_10)$(13_10)//global variable for UI position$(13_10)global.Position = 0"


//Grab all installed song packs
var songPackFilePaths = [];
var songPackFilePath = file_find_first(working_directory + "songPacks/*.rrpack", fa_none);

while (songPackFilePath != "")
{
    array_push(songPackFilePaths, songPackFilePath);

    songPackFilePath = file_find_next();
}

file_find_close(); 
//show_debug_message(songPackFilePaths);

global.packs = [];
for (var i = 0; i < array_length(songPackFilePaths); i++;){
	//load the rrpack file
	var poolFile = working_directory + "songPacks/" + songPackFilePaths[i];
	var file = file_text_open_read(poolFile);
	if (file = -1){exit};
	
	//copy its contents into a string
	var fileString = "";
	var num = 0;
	while (!file_text_eof(file))
	{
	    fileString = string_concat(fileString, file_text_readln(file));
	}
	file_text_close(file);
	
	//parse the json string
	//show_debug_message(fileString);
	
	var data;
	try {
		data = json_parse(fileString);
	} catch (err) {
		// TODO: show error message to user for invalid pack file
		continue;
	}
	
	//validate the file
	if (
		!struct_exists(data, "id") or !is_string(data.id) or string_length(data.id) = 0 or
		!struct_exists(data, "icon") or !is_string(data.icon) or string_length(data.icon) = 0 or
		!struct_exists(data, "title") or !is_string(data.title) or string_length(data.title) = 0 or
		!struct_exists(data, "description") or !is_string(data.description) or string_length(data.description) = 0 or
		!struct_exists(data, "downloadLink") or !is_string(data.downloadLink) or string_length(data.downloadLink) = 0 or
		!struct_exists(data, "startingMoney") or !is_real(data.startingMoney) or
		!struct_exists(data, "difficulty") or !is_string(data.difficulty) or string_length(data.difficulty) = 0 or
		!struct_exists(data, "songs") or !is_array(data.songs)
	){
		continue;	
	}
	
	//validate the songs
	var invalidSongs = false
	for (var j = 0; j < array_length(data.songs); j++;){
		if(!struct_exists(data.songs[j], "name") or !is_string(data.songs[j].name) or string_length(data.songs[j].name) = 0 or
		!struct_exists(data.songs[j], "artist") or !is_string(data.songs[j].artist) or string_length(data.songs[j].artist) = 0 or
		!struct_exists(data.songs[j], "charter") or !is_string(data.songs[j].charter) or string_length(data.songs[j].charter) = 0 or
		!struct_exists(data.songs[j], "genre") or !is_string(data.songs[j].genre) or string_length(data.songs[j].genre) = 0 or
		!struct_exists(data.songs[j], "length") or !is_real(data.songs[j].length) or
		!struct_exists(data.songs[j], "albumArt") or !is_string(data.songs[j].albumArt) or string_length(data.songs[j].albumArt) = 0 or
		!struct_exists(data.songs[j], "instrument") or !is_string(data.songs[j].instrument) or string_length(data.songs[j].instrument) = 0 or
		!struct_exists(data.songs[j], "intensity") or !is_real(data.songs[j].intensity) or
		!struct_exists(data.songs[j], "bucket") or !is_real(data.songs[j].bucket)
		){
			invalidSongs = true;
		}
		
	}
	if (invalidSongs)

		{show_debug_message("wug");
			continue;}
	
	//copy the list of packs into a global variable
	array_push(global.packs, data);
	
}

show_debug_message(global.packs);

//for each parsed song pack, spawn a pack button in the menu

for (var i = 0; i < array_length(global.packs); i++;){
	
	
}

//global variable for UI position
global.Position = 0/**/

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 11798511
/// @DnDArgument : "cond" "i < array_length(global.packs)"
for(i = 0; i < array_length(global.packs); i += 1) {

}

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 5A307C25
/// @DnDArgument : "cond" "i < array_length(global.packs)"
for(i = 0; i < array_length(global.packs); i += 1) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0D41A0E6
	/// @DnDParent : 5A307C25
	/// @DnDArgument : "xpos" "200 + (i * 320)"
	/// @DnDArgument : "ypos" "200"
	/// @DnDArgument : "var" "thisPool"
	/// @DnDArgument : "objectid" "o_poolSelect"
	/// @DnDArgument : "layer" "layer_get_id("Pools")"
	/// @DnDSaveInfo : "objectid" "o_poolSelect"
	thisPool = instance_create_layer(200 + (i * 320), 200, layer_get_id("Pools"), o_poolSelect);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 3DFCAF29
	/// @DnDApplyTo : thisPool
	/// @DnDParent : 5A307C25
	with(thisPool) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 52B34071
		/// @DnDInput : 9
		/// @DnDParent : 3DFCAF29
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
	}
}