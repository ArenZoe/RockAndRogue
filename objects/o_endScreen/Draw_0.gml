draw_set_colour($FFFFFFFF);
draw_set_alpha(1);
draw_set_font(f_lato);
draw_set_halign(fa_left)
var printText = [
	"Songs Played: " + string(global.runStats.songsPlayed),
	"Setlist Rerolls: " + string(global.runStats.setlistRerolls),
	"Shop Rerolls: " + string(global.runStats.shopRerolls),
	"Items Purchased: " + string(global.runStats.itemsPurchased),
	"Items Sold: " + string(global.runStats.itemsSold),
	"Consumables Used: " + string(global.runStats.consumablesUsed),
	"Total Score Earned: " + string(global.runStats.scoreTotal),
	"Base Stars Earned: " + string(global.runStats.baseStarsEarned),
	"Total Stars Earned: " + string(global.runStats.modifiedStarsEarned),
	"Notes Hit: " + string(global.runStats.notesHit),
	"Notes Missed: " + string(global.runStats.notesMissed),
	"Best Streak: " + string(global.runStats.bestStreak),
	"Overstrums: " + string(global.runStats.overstrums),
	"Ghost Inputs: " + string(global.runStats.fretsGhosted),
	"SP Phrases Hit: " + string(global.runStats.spPhrases),
	"SP Activations: " + string(global.runStats.spActivations),
	"Time in SP: " + string(global.runStats.timeInSP) + "s",
	"Notes Squeezed: " + string(global.runStats.notesSqueezed),
	"Base FCs: " + string(global.runStats.baseFCs),
	"Total FCs: " + string(global.runStats.modifiedFCs)
];

for(i = 0; i < (array_length(printText)); i += 1) {
	// Draw Value
	draw_text(x + 100, y + i*20,  + string(printText[i]));
}
