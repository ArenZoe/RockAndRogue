/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5E1ABAED
/// @DnDArgument : "xpos" "180"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "220"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "o_downloadButton"
/// @DnDArgument : "layer" ""PoolButtons""
/// @DnDSaveInfo : "objectid" "o_downloadButton"
instance_create_layer(x + 180, y + 220, "PoolButtons", o_downloadButton);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1C8244C4
/// @DnDArgument : "xpos" "20"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "220"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "o_playButton"
/// @DnDArgument : "layer" ""PoolButtons""
/// @DnDSaveInfo : "objectid" "o_playButton"
instance_create_layer(x + 20, y + 220, "PoolButtons", o_playButton);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1F4D0318
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var poolFile = get_open_filename("Pack file|*.rrpack","");$(13_10)if (poolFile = ""){exit};$(13_10)var file = file_text_open_read(poolFile);$(13_10)if (file = -1){exit};$(13_10)var fileString = "";$(13_10)$(13_10)var num = 0;$(13_10)while (!file_text_eof(file))$(13_10){$(13_10)    fileString = string_concat(fileString, file_text_readln(file));$(13_10)}$(13_10)file_text_close(file);$(13_10)$(13_10)show_debug_message(fileString);$(13_10)var data = json_parse(fileString);$(13_10)$(13_10)// Check if the struct has myObj variable$(13_10)if (struct_exists(data, "songs"))$(13_10){$(13_10)    // Check if it's a struct$(13_10)    if (is_struct(data.id))$(13_10)    {$(13_10)        // Print all struct members to the log$(13_10)        var _names = struct_get_names(data.myObj);$(13_10)        var _str = "";$(13_10)        for (var i = 0; i < array_length(_names); i++;)$(13_10)        {$(13_10)            _str = _names[i] + ": " + string(struct_get(data.myObj, _names[i]));$(13_10)            show_debug_message(_str);$(13_10)        }$(13_10)    }$(13_10)}$(13_10)$(13_10)// Check if the struct has myArray variable$(13_10)if (struct_exists(data, "songs"))$(13_10){$(13_10)    // Check if it's an array$(13_10)    if (is_array(data.songs))$(13_10)    {$(13_10)		for (var i = 0; i < array_length(data.songs); i++;){$(13_10)			show_debug_message(data.songs[i].name);$(13_10)		}$(13_10)    }$(13_10)}"
/// @description Execute Code
var poolFile = get_open_filename("Pack file|*.rrpack","");
if (poolFile = ""){exit};
var file = file_text_open_read(poolFile);
if (file = -1){exit};
var fileString = "";

var num = 0;
while (!file_text_eof(file))
{
    fileString = string_concat(fileString, file_text_readln(file));
}
file_text_close(file);

show_debug_message(fileString);
var data = json_parse(fileString);

// Check if the struct has myObj variable
if (struct_exists(data, "songs"))
{
    // Check if it's a struct
    if (is_struct(data.id))
    {
        // Print all struct members to the log
        var _names = struct_get_names(data.myObj);
        var _str = "";
        for (var i = 0; i < array_length(_names); i++;)
        {
            _str = _names[i] + ": " + string(struct_get(data.myObj, _names[i]));
            show_debug_message(_str);
        }
    }
}

// Check if the struct has myArray variable
if (struct_exists(data, "songs"))
{
    // Check if it's an array
    if (is_array(data.songs))
    {
		for (var i = 0; i < array_length(data.songs); i++;){
			show_debug_message(data.songs[i].name);
		}
    }
}