if (waitCounter < 1000){exit;}

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
	show_message("bad score file - non JSON!");
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
	show_message("bad score file - invalid format");
	exit;	
}

//validating modifiers
for (var j = 0; j < array_length(scoreData.players[0].modifiers); j++;){
	if(!is_string(scoreData.players[0].modifiers[j]) or string_length(scoreData.players[0].modifiers[j]) = 0)
	{
		show_message("bad score file - missing modifiers");
		exit;
	}
		
}

//validating sections
for (var j = 0; j < array_length(scoreData.players[0].section_stats); j++;){
	if(!struct_exists(scoreData.players[0].section_stats[j], "section_name") or !is_string(scoreData.players[0].section_stats[j].section_name) or string_length(scoreData.players[0].section_stats[j].section_name) = 0 or
	   !struct_exists(scoreData.players[0].section_stats[j], "notes_hit") or !is_real(scoreData.players[0].section_stats[j].notes_hit) or
	   !struct_exists(scoreData.players[0].section_stats[j], "notes_count") or !is_real(scoreData.players[0].section_stats[j].notes_count)
	){
		show_message("bad score file - missing sections");
		exit;
	}
		
}

//add miss counts to the play data since some items will care about and modify the value!
scoreData.players[0].notes_missed = scoreData.players[0].total_notes - scoreData.players[0].notes_hit;
scoreData.players[0].sp_phrases_missed = scoreData.players[0].sp_phrases_total - scoreData.players[0].sp_phrases_earned;
for (var isec = 0; isec < array_length(scoreData.players[0].section_stats) -1; isec++)
{
	scoreData.players[0].section_stats[isec].notes_missed = scoreData.players[0].section_stats[isec].notes_count - scoreData.players[0].section_stats[isec].notes_hit;
}

//array_push(global.playedSongsData,scoreData); //I don't think we need this tbh


global.playData = scoreData;
global.playDataBase = variable_clone(global.playData);

with(o_NowPlayingText) instance_destroy();

with(o_cardSongBig) instance_destroy();

with(o_songModifierBig) instance_destroy();

with(o_continueButton) instance_destroy();

for (var i=2;i>-1;i--)
{
	if global.itemsActive[i]
	{
		global.itemsActive[i] = !global.itemsActive[i];
		array_delete(global.itemInventory,i,1);
		with(o_InventoryPanel){event_user(1);}
		global.runStats.consumablesUsed += 1;
	}
}

instance_create_layer(960, 75, "Instances", o_resultsTitle);

instance_create_layer(302, 160, "Instances", o_resultsText);

layer_sequence_create("StarLayer", 990, 365, Sequence1);

global.runStats.songsPlayed += 1;
