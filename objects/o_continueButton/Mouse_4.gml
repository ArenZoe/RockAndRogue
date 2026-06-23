/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3CA5256E
/// @DnDArgument : "code" "$(13_10)//build file path string using environment variables$(13_10)var scorePath = (environment_get_variable("userprofile")) + "\\Documents\\Clone Hero\\scorestats.json";$(13_10)$(13_10)//check if score file can be auto-found$(13_10)$(13_10)if !file_exists(scorePath)$(13_10){$(13_10)	$(13_10)	//if score isn't auto-found$(13_10)	show_message("Couldn't auto-find your scorestats.json file. Please make sure you're on the latest version of Clone Hero, then locate the file. It should be in the same directory as your song cache, badsongs.txt, etc.");$(13_10)	$(13_10)    //load the scorestats.json file$(13_10)	scorePath = get_open_filename("scorestats.json|scorestats.json","");$(13_10)	if (scorePath =""){$(13_10)		exit;$(13_10)	}$(13_10)	$(13_10)}$(13_10)var scoreFile = file_text_open_read(scorePath);$(13_10)$(13_10)$(13_10)//copy its contents into a string$(13_10)var scoreFileString = "";$(13_10)var num = 0;$(13_10)while (!file_text_eof(scoreFile))$(13_10){$(13_10)	scoreFileString = string_concat(scoreFileString, file_text_readln(scoreFile));$(13_10)}$(13_10)file_text_close(scoreFile);$(13_10)$(13_10)//we now have the scorefile in a string variable :)$(13_10)$(13_10)//parse the json string$(13_10)var scoreData;$(13_10)try {$(13_10)	scoreData = json_parse(scoreFileString);$(13_10)} catch (err) {$(13_10)	// TODO: show error message to user for invalid score file$(13_10)	show_debug_message("bad score file - non JSON!");$(13_10)	exit;$(13_10)}$(13_10)	$(13_10)//validate the file$(13_10)if ($(13_10)	!struct_exists(scoreData, "playback_speed") or !is_real(scoreData.playback_speed) or$(13_10)	!struct_exists(scoreData, "player_count") or !is_real(scoreData.playback_speed) or scoreData.player_count != 1 or$(13_10)	!struct_exists(scoreData, "players") or !is_array(scoreData.players) or $(13_10)	!struct_exists(scoreData.players[0], "score") or !is_real(scoreData.players[0].score) or$(13_10)	!struct_exists(scoreData.players[0], "base_score") or !is_real(scoreData.players[0].base_score) or$(13_10)	!struct_exists(scoreData.players[0], "solo_bonus_total") or !is_real(scoreData.players[0].solo_bonus_total) or$(13_10)	!struct_exists(scoreData.players[0], "note_score") or !is_real(scoreData.players[0].note_score) or$(13_10)	!struct_exists(scoreData.players[0], "sustain_score") or !is_real(scoreData.players[0].sustain_score) or$(13_10)	!struct_exists(scoreData.players[0], "sp_score") or !is_real(scoreData.players[0].sp_score) or$(13_10)	!struct_exists(scoreData.players[0], "combo_score") or !is_real(scoreData.players[0].combo_score) or$(13_10)	!struct_exists(scoreData.players[0], "notes_hit") or !is_real(scoreData.players[0].notes_hit) or$(13_10)	!struct_exists(scoreData.players[0], "total_notes") or !is_real(scoreData.players[0].total_notes) or$(13_10)	!struct_exists(scoreData.players[0], "max_streak") or !is_real(scoreData.players[0].max_streak) or$(13_10)	!struct_exists(scoreData.players[0], "end_streak") or !is_real(scoreData.players[0].end_streak) or$(13_10)	!struct_exists(scoreData.players[0], "excess_hits") or !is_real(scoreData.players[0].excess_hits) or$(13_10)	!struct_exists(scoreData.players[0], "sp_phrases_earned") or !is_real(scoreData.players[0].sp_phrases_earned) or$(13_10)	!struct_exists(scoreData.players[0], "sp_phrases_total") or !is_real(scoreData.players[0].sp_phrases_total) or$(13_10)	!struct_exists(scoreData.players[0], "sp_activations") or !is_real(scoreData.players[0].sp_activations) or$(13_10)	!struct_exists(scoreData.players[0], "time_in_sp") or !is_real(scoreData.players[0].time_in_sp) or$(13_10)	!struct_exists(scoreData.players[0], "sp_ticks_accumulated") or !is_real(scoreData.players[0].sp_ticks_accumulated) or$(13_10)	!struct_exists(scoreData.players[0], "sp_bar_ticks") or !is_real(scoreData.players[0].sp_bar_ticks) or$(13_10)	!struct_exists(scoreData.players[0], "stars") or !is_real(scoreData.players[0].stars) or$(13_10)	!struct_exists(scoreData.players[0], "avg_multiplier") or !is_real(scoreData.players[0].avg_multiplier) or$(13_10)	!struct_exists(scoreData.players[0], "frets_ghosted") or !is_real(scoreData.players[0].frets_ghosted) or$(13_10)	!struct_exists(scoreData.players[0], "accent_notes_hit") or !is_real(scoreData.players[0].accent_notes_hit) or$(13_10)	!struct_exists(scoreData.players[0], "accent_notes_total") or !is_real(scoreData.players[0].accent_notes_total) or$(13_10)	!struct_exists(scoreData.players[0], "ghost_notes_hit") or !is_real(scoreData.players[0].ghost_notes_hit) or$(13_10)	!struct_exists(scoreData.players[0], "ghost_notes_total") or !is_real(scoreData.players[0].ghost_notes_total) or$(13_10)	!struct_exists(scoreData.players[0], "is_fc") or !is_bool(scoreData.players[0].is_fc) or$(13_10)	!struct_exists(scoreData.players[0], "modifiers") or !is_array(scoreData.players[0].modifiers) or$(13_10)	!struct_exists(scoreData.players[0], "section_stats") or !is_array(scoreData.players[0].section_stats)$(13_10)){$(13_10)	show_debug_message("bad score file - invalid format");$(13_10)	exit;	$(13_10)}$(13_10)$(13_10)//validating modifiers$(13_10)for (var j = 0; j < array_length(scoreData.players[0].modifiers); j++;){$(13_10)	if(!is_string(scoreData.players[0].modifiers[j]) or string_length(scoreData.players[0].modifiers[j]) = 0)$(13_10)	{$(13_10)		show_debug_message("bad score file - missing modifiers");$(13_10)		exit;$(13_10)	}$(13_10)		$(13_10)}$(13_10)$(13_10)//validating sections$(13_10)for (var j = 0; j < array_length(scoreData.players[0].section_stats); j++;){$(13_10)	if(!struct_exists(scoreData.players[0].section_stats[j], "section_name") or !is_string(scoreData.players[0].section_stats[j].section_name) or string_length(scoreData.players[0].section_stats[j].section_name) = 0 or$(13_10)	   !struct_exists(scoreData.players[0].section_stats[j], "notes_hit") or !is_real(scoreData.players[0].section_stats[j].notes_hit) or$(13_10)	   !struct_exists(scoreData.players[0].section_stats[j], "notes_count") or !is_real(scoreData.players[0].section_stats[j].notes_count)$(13_10)	){$(13_10)		show_debug_message("bad score file - missing sections");$(13_10)		exit;$(13_10)	}$(13_10)		$(13_10)}$(13_10)$(13_10)array_push(global.playedSongsData,scoreData);$(13_10)global.playData = scoreData;$(13_10)"

//build file path string using environment variables
var scorePath = (environment_get_variable("userprofile")) + "\\Documents\\Clone Hero\\scorestats.json";

//check if score file can be auto-found

if !file_exists(scorePath)
{
	
	//if score isn't auto-found
	show_message("Couldn't auto-find your scorestats.json file. Please make sure you're on the latest version of Clone Hero, then locate the file. It should be in the same directory as your song cache, badsongs.txt, etc.");
	
    //load the scorestats.json file
	scorePath = get_open_filename("scorestats.json|scorestats.json","");
	if (scorePath =""){
		exit;
	}
	
}
var scoreFile = file_text_open_read(scorePath);


//copy its contents into a string
var scoreFileString = "";
var num = 0;
while (!file_text_eof(scoreFile))
{
	scoreFileString = string_concat(scoreFileString, file_text_readln(scoreFile));
}
file_text_close(scoreFile);

//we now have the scorefile in a string variable :)

//parse the json string
var scoreData;
try {
	scoreData = json_parse(scoreFileString);
} catch (err) {
	// TODO: show error message to user for invalid score file
	show_debug_message("bad score file - non JSON!");
	exit;
}
	
//validate the file
if (
	!struct_exists(scoreData, "playback_speed") or !is_real(scoreData.playback_speed) or
	!struct_exists(scoreData, "player_count") or !is_real(scoreData.playback_speed) or scoreData.player_count != 1 or
	!struct_exists(scoreData, "players") or !is_array(scoreData.players) or 
	!struct_exists(scoreData.players[0], "score") or !is_real(scoreData.players[0].score) or
	!struct_exists(scoreData.players[0], "base_score") or !is_real(scoreData.players[0].base_score) or
	!struct_exists(scoreData.players[0], "solo_bonus_total") or !is_real(scoreData.players[0].solo_bonus_total) or
	!struct_exists(scoreData.players[0], "note_score") or !is_real(scoreData.players[0].note_score) or
	!struct_exists(scoreData.players[0], "sustain_score") or !is_real(scoreData.players[0].sustain_score) or
	!struct_exists(scoreData.players[0], "sp_score") or !is_real(scoreData.players[0].sp_score) or
	!struct_exists(scoreData.players[0], "combo_score") or !is_real(scoreData.players[0].combo_score) or
	!struct_exists(scoreData.players[0], "notes_hit") or !is_real(scoreData.players[0].notes_hit) or
	!struct_exists(scoreData.players[0], "total_notes") or !is_real(scoreData.players[0].total_notes) or
	!struct_exists(scoreData.players[0], "max_streak") or !is_real(scoreData.players[0].max_streak) or
	!struct_exists(scoreData.players[0], "end_streak") or !is_real(scoreData.players[0].end_streak) or
	!struct_exists(scoreData.players[0], "excess_hits") or !is_real(scoreData.players[0].excess_hits) or
	!struct_exists(scoreData.players[0], "sp_phrases_earned") or !is_real(scoreData.players[0].sp_phrases_earned) or
	!struct_exists(scoreData.players[0], "sp_phrases_total") or !is_real(scoreData.players[0].sp_phrases_total) or
	!struct_exists(scoreData.players[0], "sp_activations") or !is_real(scoreData.players[0].sp_activations) or
	!struct_exists(scoreData.players[0], "time_in_sp") or !is_real(scoreData.players[0].time_in_sp) or
	!struct_exists(scoreData.players[0], "sp_ticks_accumulated") or !is_real(scoreData.players[0].sp_ticks_accumulated) or
	!struct_exists(scoreData.players[0], "sp_bar_ticks") or !is_real(scoreData.players[0].sp_bar_ticks) or
	!struct_exists(scoreData.players[0], "stars") or !is_real(scoreData.players[0].stars) or
	!struct_exists(scoreData.players[0], "avg_multiplier") or !is_real(scoreData.players[0].avg_multiplier) or
	!struct_exists(scoreData.players[0], "frets_ghosted") or !is_real(scoreData.players[0].frets_ghosted) or
	!struct_exists(scoreData.players[0], "accent_notes_hit") or !is_real(scoreData.players[0].accent_notes_hit) or
	!struct_exists(scoreData.players[0], "accent_notes_total") or !is_real(scoreData.players[0].accent_notes_total) or
	!struct_exists(scoreData.players[0], "ghost_notes_hit") or !is_real(scoreData.players[0].ghost_notes_hit) or
	!struct_exists(scoreData.players[0], "ghost_notes_total") or !is_real(scoreData.players[0].ghost_notes_total) or
	!struct_exists(scoreData.players[0], "is_fc") or !is_bool(scoreData.players[0].is_fc) or
	!struct_exists(scoreData.players[0], "modifiers") or !is_array(scoreData.players[0].modifiers) or
	!struct_exists(scoreData.players[0], "section_stats") or !is_array(scoreData.players[0].section_stats)
){
	show_debug_message("bad score file - invalid format");
	exit;	
}

//validating modifiers
for (var j = 0; j < array_length(scoreData.players[0].modifiers); j++;){
	if(!is_string(scoreData.players[0].modifiers[j]) or string_length(scoreData.players[0].modifiers[j]) = 0)
	{
		show_debug_message("bad score file - missing modifiers");
		exit;
	}
		
}

//validating sections
for (var j = 0; j < array_length(scoreData.players[0].section_stats); j++;){
	if(!struct_exists(scoreData.players[0].section_stats[j], "section_name") or !is_string(scoreData.players[0].section_stats[j].section_name) or string_length(scoreData.players[0].section_stats[j].section_name) = 0 or
	   !struct_exists(scoreData.players[0].section_stats[j], "notes_hit") or !is_real(scoreData.players[0].section_stats[j].notes_hit) or
	   !struct_exists(scoreData.players[0].section_stats[j], "notes_count") or !is_real(scoreData.players[0].section_stats[j].notes_count)
	){
		show_debug_message("bad score file - missing sections");
		exit;
	}
		
}

array_push(global.playedSongsData,scoreData);
global.playData = scoreData;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3682A81B
/// @DnDApplyTo : {o_NowPlayingText}
with(o_NowPlayingText) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5BB80989
/// @DnDApplyTo : {o_cardSongBig}
with(o_cardSongBig) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6366544A
/// @DnDApplyTo : {o_songModifierBig}
with(o_songModifierBig) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 385524E6
/// @DnDApplyTo : {o_continueButton}
with(o_continueButton) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 73E31E5F
/// @DnDArgument : "xpos" "960"
/// @DnDArgument : "ypos" "75"
/// @DnDArgument : "objectid" "o_resultsText"
/// @DnDSaveInfo : "objectid" "o_resultsText"
instance_create_layer(960, 75, "Instances", o_resultsText);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 04E4835D
/// @DnDArgument : "function" "starCalculation"
starCalculation();