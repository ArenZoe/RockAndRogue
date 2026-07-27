function playerOwnsRevive()
{
	for (var i=0;i<array_length(global.jokerInventory);i++)
	{
		if (global.jokerInventory[i] = global.jokers.revive)
		{
			return true;	
		}
	}
	return false;
}

function starCalculation() 
{
	//do stat tracking for playData here after all modifications
	
	global.runStats.scoreTotal += global.playData.players[0].score;
	global.runStats.baseStarsEarned += global.playDataBase.players[0].stars;
	global.runStats.modifiedStarsEarned += global.playData.players[0].stars;
	global.runStats.notesHit += global.playData.players[0].notes_hit;
	global.runStats.notesMissed += global.playData.players[0].notes_missed;	
	global.runStats.overstrums += global.playData.players[0].excess_hits;
	global.runStats.spPhrases += global.playData.players[0].sp_phrases_earned;
	global.runStats.spActivations += global.playData.players[0].sp_activations;
	global.runStats.timeInSP += global.playData.players[0].time_in_sp;
	global.runStats.fretsGhosted += global.playData.players[0].frets_ghosted;
	global.runStats.notesSqueezed += global.playData.players[0].squeezed_notes;
	
	if global.playDataBase.players[0].is_fc {global.runStats.baseFCs += 1;}
	if global.playData.players[0].is_fc {global.runStats.modifiedFCs += 1;}
	if (global.runStats.bestStreak < global.playData.players[0].max_streak){global.runStats.bestStreak = global.playData.players[0].max_streak;}
	
	if(global.playData.players[0].stars >= global.nextStars)
	{
		// spawn this one if enough stars
		instance_create_layer(944, 592, "Instances", o_continueResultsButton);
	}
	
	else
	{
		//check for revive joker
		if playerOwnsRevive()
		{
			global.playedSongsData[(array_length(global.playedSongsData)-1)].money = 0;
			instance_create_layer(944, 592, "Instances", o_continueResultsButton);
			o_continueResultsButton.label = "Revive";
			for (var i=0;i<array_length(global.jokerInventory);i++)
			{
				if (global.jokerInventory[i] = global.jokers.revive)
				{
					array_delete(global.jokerInventory,i,1);
					with (o_InventoryPanel){event_user(1);}
				}
			}
			starPopup("Text","Revived!");
			exit;
		}
		
		//otherwise spawn this one
		instance_create_layer(944, 592, "Instances", o_endResultsButton);
	}
}