/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5170707C
/// @DnDArgument : "code" "function msToTimestamp(ms){$(13_10)	var lengthSeconds = floor((ms / 1000) % 60);$(13_10)	var lengthMinutes = floor((ms / 1000 / 60) % 60);$(13_10)	var lengthHours = floor((ms / 1000 / 60 / 60) % 24);$(13_10)	var length = "";$(13_10)$(13_10)	if (lengthHours != 0){$(13_10)		length = string_concat(lengthHours,":");$(13_10)	}$(13_10)$(13_10)	if (lengthMinutes < 10) {$(13_10)		length = string_concat(length,"0");$(13_10)	}$(13_10)$(13_10)	length = string_concat(length,lengthMinutes,":");$(13_10)$(13_10)	if (lengthSeconds < 10) {$(13_10)		length = string_concat(length,"0");$(13_10)	}$(13_10)$(13_10)	length = string_concat(length,lengthSeconds);$(13_10)$(13_10)	return length;$(13_10)$(13_10)}$(13_10)"
function msToTimestamp(ms){
	var lengthSeconds = floor((ms / 1000) % 60);
	var lengthMinutes = floor((ms / 1000 / 60) % 60);
	var lengthHours = floor((ms / 1000 / 60 / 60) % 24);
	var length = "";

	if (lengthHours != 0){
		length = string_concat(lengthHours,":");
	}

	if (lengthMinutes < 10) {
		length = string_concat(length,"0");
	}

	length = string_concat(length,lengthMinutes,":");

	if (lengthSeconds < 10) {
		length = string_concat(length,"0");
	}

	length = string_concat(length,lengthSeconds);

	return length;

}