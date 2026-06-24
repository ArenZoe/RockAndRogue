/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 6D64E34D
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 2F7519AB
/// @DnDArgument : "font" "f_latoMinier"
/// @DnDSaveInfo : "font" "f_latoMinier"
draw_set_font(f_latoMinier);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3B15A2AC
draw_set_colour($FFFFFFFF & $ffffff);
var l3B15A2AC_0=($FFFFFFFF >> 24);
draw_set_alpha(l3B15A2AC_0 / $ff);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 41C96FFA
/// @DnDArgument : "code" "var resultsTextArray = [$(13_10)string("Score: ") + string(global.playData.players[0].score),$(13_10)string("Base Score: ") + string(global.playData.players[0].base_score),$(13_10)string("Combo Score: ") + string(global.playData.players[0].combo_score),$(13_10)string("Star Power Score: ") + string(global.playData.players[0].sp_score),$(13_10)string("Note Score: ") + string(global.playData.players[0].note_score),$(13_10)string("Sustain Score: ") + string(global.playData.players[0].sustain_score),$(13_10)string("Solo Bonus: ") + string(global.playData.players[0].solo_bonus_total),$(13_10)string("Clean Play Bonus: ") + string(global.playData.players[0].clean_play_bonus),$(13_10)string("Notes Hit: ") + string(global.playData.players[0].notes_hit),$(13_10)string("Notes Missed: ") + string(global.playData.players[0].total_notes - global.playData.players[0].notes_hit),$(13_10)string("Total Notes: ") + string(global.playData.players[0].total_notes),$(13_10)string("Max Streak: ") + string(global.playData.players[0].max_streak),$(13_10)string("Ending Streak: ") + string(global.playData.players[0].end_streak),$(13_10)string("Overstrums: ") + string(global.playData.players[0].excess_hits),$(13_10)string("Fret Ghosts: ") + string(global.playData.players[0].frets_ghosted),$(13_10)string("Stars: ") + string(global.playData.players[0].stars),$(13_10)string("Average Multiplier: ") + string(global.playData.players[0].avg_multiplier),$(13_10)string("Squeezed Notes: ") + string(global.playData.players[0].squeezed_notes),$(13_10)string("Squeezed Note Losses: ") + string(global.playData.players[0].squeeze_note_losses),$(13_10)string("Squeezed Score: ") + string(global.playData.players[0].squeezed_score),$(13_10)string("Star Power Phrases Hit: ") + string(global.playData.players[0].sp_phrases_earned),$(13_10)string("Star Power Phrases Missed: ") + string(global.playData.players[0].sp_phrases_total - global.playData.players[0].sp_phrases_earned),$(13_10)string("Total Star Power Phrases: ") + string(global.playData.players[0].sp_phrases_total),$(13_10)string("Star Power Activations: ") + string(global.playData.players[0].sp_activations),$(13_10)string("Time in Star Power: ") + string(global.playData.players[0].time_in_sp),$(13_10)string("SP Ticks Accumulated: ") + string(global.playData.players[0].sp_ticks_accumulated),$(13_10)string("Star Power Bar Ticks: ") + string(global.playData.players[0].sp_bar_ticks)$(13_10)];"
var resultsTextArray = [
string("Score: ") + string(global.playData.players[0].score),
string("Base Score: ") + string(global.playData.players[0].base_score),
string("Combo Score: ") + string(global.playData.players[0].combo_score),
string("Star Power Score: ") + string(global.playData.players[0].sp_score),
string("Note Score: ") + string(global.playData.players[0].note_score),
string("Sustain Score: ") + string(global.playData.players[0].sustain_score),
string("Solo Bonus: ") + string(global.playData.players[0].solo_bonus_total),
string("Clean Play Bonus: ") + string(global.playData.players[0].clean_play_bonus),
string("Notes Hit: ") + string(global.playData.players[0].notes_hit),
string("Notes Missed: ") + string(global.playData.players[0].total_notes - global.playData.players[0].notes_hit),
string("Total Notes: ") + string(global.playData.players[0].total_notes),
string("Max Streak: ") + string(global.playData.players[0].max_streak),
string("Ending Streak: ") + string(global.playData.players[0].end_streak),
string("Overstrums: ") + string(global.playData.players[0].excess_hits),
string("Fret Ghosts: ") + string(global.playData.players[0].frets_ghosted),
string("Stars: ") + string(global.playData.players[0].stars),
string("Average Multiplier: ") + string(global.playData.players[0].avg_multiplier),
string("Squeezed Notes: ") + string(global.playData.players[0].squeezed_notes),
string("Squeezed Note Losses: ") + string(global.playData.players[0].squeeze_note_losses),
string("Squeezed Score: ") + string(global.playData.players[0].squeezed_score),
string("Star Power Phrases Hit: ") + string(global.playData.players[0].sp_phrases_earned),
string("Star Power Phrases Missed: ") + string(global.playData.players[0].sp_phrases_total - global.playData.players[0].sp_phrases_earned),
string("Total Star Power Phrases: ") + string(global.playData.players[0].sp_phrases_total),
string("Star Power Activations: ") + string(global.playData.players[0].sp_activations),
string("Time in Star Power: ") + string(global.playData.players[0].time_in_sp),
string("SP Ticks Accumulated: ") + string(global.playData.players[0].sp_ticks_accumulated),
string("Star Power Bar Ticks: ") + string(global.playData.players[0].sp_bar_ticks)
];

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 27140141
/// @DnDArgument : "code" "for (var i=0; i < (array_length(resultsTextArray)-1); i+=1)$(13_10){$(13_10)	draw_text(x + 0, y + (i*15), resultsTextArray[i]);$(13_10)}"
for (var i=0; i < (array_length(resultsTextArray)-1); i+=1)
{
	draw_text(x + 0, y + (i*15), resultsTextArray[i]);
}