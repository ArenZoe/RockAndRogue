enum Modifiers
{
	speedIncrease110,
	speedIncrease120,
	speedIncrease130,
	speedIncrease140,
	speedIncrease150,
	highwayLength90,
	highwayLength80,
	highwayLength60,
	fixedNoteSpeed18,
	fixedNoteSpeed16,
	fixedNoteSpeed14,
	fixedNoteSpeed7,
	fixedNoteSpeed5,
	fixedNoteSpeed3,
	modchartPrep,
	strumlessHOPOs,
	droplessSustains,
	mirrorMode,
	brutalMode,
	noteShuffle,
	gemSize300,
	gemSizeMinus25,
	funnyHighway,
	stealthColour,
	allStrums,
	noGhosting,
	doubleNotes,
	leftyFlip,
	framerate60,
	framerate30,
	precisionMode,
}
enum jType
{
		linearScaler,
		growing,
		decaying,
		flatBig,
		flatSmall,
		passive,
		duplicator,
		statChanger,
		synergizer,
		economic,
		toggle,
		special				
}
initJokers();
initItems();

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

		{show_debug_message(poolFile);
			continue;}
	
	//copy the list of packs into a global variable
	array_push(global.packs, data);
	
}

//show_debug_message(global.packs);

//for each parsed song pack, spawn a pack button in the menu

for (var i = 0; i < array_length(global.packs); i++;){
	
	
}

//global variable for UI position
global.Position = 0/**/