function playerOwnsGrowthSpurt()
{
	for (var i=0;i<array_length(global.jokerInventory)-1;i++)
	{
		if (global.jokerInventory[i] = global.jokers.growthSpurt)
		{
			return true;	
		}
	}
	return false;
}

function playerOwnsHighEndurance()
{
	for (var i=0;i<array_length(global.jokerInventory)-1;i++)
	{
		if (global.jokerInventory[i] = global.jokers.highEndurance)
		{
			return true;	
		}
	}
	return false;
}

function jokerEval(jokerToEval) 
{
	var increase = 0;
	var decay = 0;
	var percentage = floor((global.playData.players[0].notes_hit / global.playData.players[0].total_notes)*100);
	var perfectSec = 0;
		for (var i=0;i<(global.playData.players[0].section_count-1);i++;)
		{
			if (global.playData.players[0].section_stats[i].notes_hit = global.playData.players[0].section_stats[i].notes_count)
			{
				perfectSec +=1;
			}
		}
	
	show_debug_message("This joker is " + string(global.jokerInventory[jokerToEval].name));
	
	switch(global.jokerInventory[jokerToEval])
	{
		case global.jokers.shroedinger:        
			//[Notes Hit] and [Notes Missed] are set to [Total Notes]
			show_debug_message("setting notes hit and missed to total")
			global.playData.players[0].notes_hit = global.playData.players[0].total_notes;
			global.playData.players[0].notes_missed = global.playData.players[0].total_notes;
		break;
		
		case global.jokers.wip:                
			//First setlist reroll is free
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.crowd:              
			//Setlist rerolls cost double, x1.5 Avg Mult
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.vip:                
			//+2 Currency per song
			show_debug_message("adding 2 money")
			global.gameMoney += 2;
		break;
		
		case global.jokers.noteworthy:         
			//+0.1 Avg Mult per 100 Notes Hit
			show_debug_message("avg mult +" + string(0.1 * floor(global.playData.players[0].notes_hit / 100)));
			global.playData.players[0].avg_multiplier += (0.1 * floor(global.playData.players[0].notes_hit / 100));
			
		break;
		
		case global.jokers.aPlus:              
			//+0.1 Avg Mult per Notes Hit % above 90%
			var above90 = min(percentage-90,0);
			show_debug_message("avg mult +" + string(0.1 * above90));
			global.playData.players[0].avg_multiplier += (0.1 * above90);
		break;
		
		case global.jokers.serial:             
			//+0.005 Avg Mult per note in Best Streak
			show_debug_message("avg mult +" + string(0.005 * global.playData.players[0].max_streak));
			global.playData.players[0].avg_multiplier += (0.005 * global.playData.players[0].max_streak);
		break;
		
		case global.jokers.plugged:            
			//+0.1 Avg Mult per SP Phrase
			show_debug_message("avg mult +" + string(0.1 * global.playData.players[0].sp_phrases_earned));
			global.playData.players[0].avg_multiplier += (0.1 * global.playData.players[0].sp_phrases_earned);
		break;
		
		case global.jokers.discharged:         
			//+0.2 Avg Mult per Activation
			show_debug_message("avg mult +" + string(0.2 * global.playData.players[0].sp_activations));
			global.playData.players[0].avg_multiplier += (0.2 * global.playData.players[0].sp_activations);
		break;
		
		case global.jokers.adrenaline:         
			//+0.01 Avg Mult per second of SP Time Active (rounded down)
			show_debug_message("avg mult +" + string(0.01 * floor(global.playData.players[0].time_in_sp)));
			global.playData.players[0].avg_multiplier += (0.01 * floor(global.playData.players[0].time_in_sp));
		break;
		
		case global.jokers.sustain:            
			//+0.01 Avg Mult per 100 sustain points
			show_debug_message("avg mult +" + string(0.01 * (floor(global.playData.players[0].sustain_score / 100))));
			global.playData.players[0].avg_multiplier += (0.01 * (floor(global.playData.players[0].sustain_score / 100)));
		break;
		
		case global.jokers.sharpshooter:       
			//+0.1 Avg Mult per 100% Section 
			show_debug_message("avg mult +" + string((0.1 * perfectSec)));
			global.playData.players[0].avg_multiplier += (0.1 * perfectSec);
		break;
		
		case global.jokers.cent:               
			//x1.00 Avg Mult, increases by x0.001 per 100 Notes Hit
			increase = floor(global.playData.players[0].notes_hit / 100);
			global.jokers.cent.count += increase;
			if playerOwnsGrowthSpurt(){global.jokers.cent.count += increase;}
			show_debug_message("avg mult x" + string(1 + (0.001 * global.jokers.cent.count)));
			global.playData.players[0].avg_multiplier *= (1 + (0.001 * global.jokers.cent.count));
		break;
		
		case global.jokers.constellation:      
			//+0.00 Avg Mult, increases by +0.05 per Base Star
			increase = global.playData.base.players[0].stars;
			global.jokers.constellation.count += increase;
			if playerOwnsGrowthSpurt(){global.jokers.constellation.count += increase;}
			show_debug_message("avg mult +" + string(0.05 * global.jokers.constellation.count));
			global.playData.players[0].avg_multiplier += 0.05 * global.jokers.constellation.count;
		break;
		
		case global.jokers.flawless:           
			//+0.0 Avg Mult, increases by +0.8 per FC
			if global.playData.players[0].is_fc {increase = 1;}
			else {increase = 0;}
			global.jokers.flawless.count += increase;
			if playerOwnsGrowthSpurt(){global.jokers.flawless.count += increase;}
			show_debug_message("avg mult +" + string(0.8 * global.jokers.flawless.count));
			global.playData.players[0].avg_multiplier += 0.8 * global.jokers.flawless.count;
		break;
		
		case global.jokers.meticulous:         
			//+0.0 Avg Mult, increases +0.2 per song over 90%
			if percentage >= 90 {increase = 1;}
			else {increase=0;}
			global.jokers.meticulous.count += increase;
			if playerOwnsGrowthSpurt(){global.jokers.meticulous.count+=increase;}
			show_debug_message("avg mult +" + string(0.2 * global.jokers.meticulous.count));
			global.playData.players[0].avg_multiplier += (0.2 * global.jokers.meticulous.count);
		break;
		
		case global.jokers.kickingAss:         
			//+0.2 Avg Mult, increases 0.1 per Best Streak over 500
			if global.playData.players[0].max_streak >= 500 {increase=1;}
			else {increase=0;}
			global.jokers.kickingAss.count += increase;
			if playerOwnsGrowthSpurt(){global.jokers.kickingAss.count += increase;}
			show_debug_message("avg mult +" + string((0.2 + (0.1*global.jokers.kickingAss.count))));
			global.playData.players[0].avg_multiplier += (0.2 + (0.1*global.jokers.kickingAss.count));
		break;
		
		case global.jokers.takingNames:        
			//x1.2 Avg Mult, increases 0.1 per Best Streak over 1000
			if global.playData.players[0].max_streak >=1000 {increase=1;}
			else {increase=0;}
			global.jokers.takingNames.count += increase;
			if playerOwnsGrowthSpurt(){global.jokers.takingNames.count += increase;}
			show_debug_message("avg mult x" + string(1.2 + (0.1*global.jokers.takingNames.count)));
			global.playData.players[0].avg_multiplier *= (1.2 + (0.1*global.jokers.takingNames.count));
		break;
		
		case global.jokers.livewire:           
			// +0.1 Avg Multiplier per [SP Bars Filled]
			var spBars = floor(global.playData.players[0].sp_ticks_accumulated / global.playData.players[0].sp_bar_ticks);
			show_debug_message("avg mult +" + string(0.1*spBars));
			global.playData.players[0].avg_multiplier += (0.1 * spBars);
		break;
		
		case global.jokers.zoning:             
			//+0.0 Avg Mult, increases 0.1 per 100% Section
			increase = perfectSec;
			global.jokers.zoning.count += increase;
			if playerOwnsGrowthSpurt(){global.jokers.zoning.count += increase;}
			show_debug_message("avg mult +" + string(0.1 * global.jokers.zoning.count));
			global.playData.players[0].avg_multiplier += (0.1 * global.jokers.zoning.count);
		break;
		
		case global.jokers.allYourBase:        
			//+0.00 Avg Mult, increases by +0.01 per 1000 Base Note Points
			increase = floor(global.playData.base.players[0].note_score / 1000);
			global.jokers.allYourBase.count += increase;
			if playerOwnsGrowthSpurt(){global.jokers.allYourBase.count += increase;}
			show_debug_message("avg mult +" + string(0.01 * global.jokers.allYourBase.count));
			global.playData.players[0].avg_multiplier += (0.01 * global.jokers.allYourBase.count);
		break;
		
		case global.jokers.extraCredit:        
			//x1.5 Avg Mult, reduces by x0.01 per Percentage under 100%
			decay = 100 - percentage;
			if playerOwnsHighEndurance(){decay = floor(decay/2);}
			global.jokers.extraCredit.count += decay;
			show_debug_message("avg mult x" + string(1.5 - (0.01 * global.jokers.extraCredit.count)));
			global.playData.players[0].avg_multiplier *= (1.5 - (0.01 * global.jokers.extraCredit.count));
		break;
		
		case global.jokers.evaporation:        
			//+2.0 Avg Mult, reduces by -0.01 per Note Missed
			decay = global.playData.players[0].notes_missed;
			if playerOwnsHighEndurance(){decay = floor(decay/2);}
			global.jokers.evaporation.count += decay;
			show_debug_message("avg mult +" + string(2.0 - (0.01*global.jokers.evaporation.count)));
			global.playData.players[0].avg_multiplier += (2.0 - (0.01*global.jokers.evaporation.count));
		break;
		
		case global.jokers.borrowedTime:       
			//+2.0 Avg Mult, reduces by -0.2 per Song
			decay = 2
			if playerOwnsHighEndurance(){decay=1;}
			show_debug_message("avg mult +" + string(2.0 - (0.1*global.jokers.borrowedTime.count)));
			global.playData.players[0].avg_multiplier += (2.0 - (0.1*global.jokers.borrowedTime.count)); //this one is -0.1 since we're decaying it by 2 (so that the half decay still works if the player has high endurance)
			global.jokers.borrowedTime.count += decay; //we want this one to decay after it applies the bonus since it decays per song
		break;
		
		case global.jokers.aberration:         
			//+2.0 Avg Mult, reduces by -0.1 per Overstrum
			decay = global.playData.players[0].excess_hits;
			if playerOwnsHighEndurance(){decay = floor(decay/2);}
			global.jokers.aberration.count += decay;
			show_debug_message("avg mult +" + string(2.0 - (0.1*global.jokers.aberration.count)));
			global.playData.players[0].avg_multiplier += (2.0 - (0.1*global.jokers.aberration.count));
		break;
		
		case global.jokers.idiomatic:          
			//x2.0 Avg Mult, reduces by -0.1 per missed Phrase
			decay = global.playData.players[0].sp_phrases_missed;
			if playerOwnsHighEndurance(){decay=floor(decay/2);}
			global.jokers.idiomatic.count += decay;
			show_debug_message("avg mult x" + string(2.0 - (0.1*global.jokers.idiomatic.count)));
			global.playData.players[0].avg_multiplier *= (2.0 - (0.1*global.jokers.idiomatic.count));
		break;
		
		case global.jokers.spiritJar:          
			//+2.0 Avg Mult, reduces by -0.1 per 10 Ghost Inputs
			decay = floor(global.playData.players[0].frets_ghosted / 10);
			if playerOwnsHighEndurance(){decay=floor(decay/2);}
			global.jokers.spiritJar.count += decay;
			show_debug_message("avg mult +" + string(2.0 - (0.1*global.jokers.spiritJar.count)));
			global.playData.players[0].avg_multiplier += (2.0 - (0.1*global.jokers.spiritJar.count));		
		break;
		
		case global.jokers.bigTipper:          
			//+4 Currency per song, reduces by 1 per Section under 90%
			var secUnder90 = 0
			for (var i=0;i<(global.playData.players[0].section_count-1);i++;)
			{
				if (global.playData.players[0].section_stats[i].notes_hit < (0.9 * global.playData.players[0].section_stats[i].notes_count))
				{
					secUnder90 +=1;
				}
			}
			decay = secUnder90;
			if playerOwnsHighEndurance(){decay=floor(decay/2);}
			global.jokers.bigTipper.count += decay;
			show_debug_message("money +" + string(max(0,(4 - global.jokers.bigTipper.count))));
			global.gameMoney += max(0,(4 - global.jokers.bigTipper.count));
		break;
		
		case global.jokers.satisfying:         
			//+5.0 Avg Mult if Best Streak is divisible by 100
			if (global.playData.players[0].max_streak mod 100 = 0)
			{
				show_debug_message("avg mult +5.0");
				global.playData.players[0].avg_multiplier += 5.0;
			}
		break;
		
		case global.jokers.friedChicken:       
			//x2.0 Avg Mult if FC
			if (global.playData.players[0].is_fc = true)
			{
				show_debug_message("avg mult x2.0");
				global.playData.players[0].avg_multiplier *= 2.0;
			}
		break;
		
		case global.jokers.bullseye:           
			//+4.4 Avg Mult if Base Avg Mult is between 4.400 - 4.450
			if (global.playData.base.players[0].avg_multiplier >=4.40 and global.playData.base.players[0].avg_multiplier <= 4.45)
				{
					show_debug_message("avg mult +4.4");
					global.playData.players[0].avg_multiplier += 4.4;
				}
		break;
		
		case global.jokers.rhythmic:           
			//x1.5 Avg Mult if Overstrums is 0
			if (global.playData.players[0].excess_hits = 0)
			{
				show_debug_message("avg mult x1.5");
				global.playData.players[0].avg_multiplier *= 1.5;
			}
		break;
		
		case global.jokers.fameAndFortune:     
			//x1.5 Avg Mult if all SP Phrases hit
			if (global.playData.players[0].sp_phrases_missed = 0)
			{
				show_debug_message("avg mult x1.5");
				global.playData.players[0].avg_multiplier *= 1.5;
			}
		break;
		
		case global.jokers.exorcism:           
			//x1.5 Avg Mult if Ghost Inputs is <10
			if (global.playData.players[0].frets_ghosted < 10)
			{
				show_debug_message("avg mult x1.5");
				global.playData.players[0].avg_multiplier *= 1.5;
			}
		break;
		
		case global.jokers.hotStreak:          
			//x1.2 Avg Mult if Best Streak > 500
			if (global.playData.players[0].max_streak > 500)
			{
				show_debug_message("avg mult x1.2");
				global.playData.players[0].avg_multiplier *= 1.2;
			}
		break;
		
		case global.jokers.studied:            
			//+1.0 Avg Mult if Percentage > 90%
			if (percentage > 90)
			{
				show_debug_message("avg mult +1.0");
				global.playData.players[0].avg_multiplier += 1.0;
			}
		break;
		
		case global.jokers.waterHole:          
			//+1.0 Avg Mult if Notes Missed < 50
			if (global.playData.players[0].notes_missed < 50)
			{
				show_debug_message("avg mult +1.0");
				global.playData.players[0].avg_multiplier += 1.0;
			}
		break;
		
		case global.jokers.discipline:         
			//+1.0 Avg Mult if Overstrums < 25
			if (global.playData.players[0].excess_hits < 25)
			{
				show_debug_message("avg mult +1.0");
				global.playData.players[0].avg_multiplier += 1.0;
			}
		break;
		
		case global.jokers.pyrotechnic:        
			//+1.0 Avg Mult if Activations > 4
			if (global.playData.players[0].sp_activations > 4)
			{
				show_debug_message("avg mult +1.0");
				global.playData.players[0].avg_multiplier += 1.0;
			}
		break;
		
		case global.jokers.hesitant:           
			//+1.0 Avg Mult if Activations < 4
			if (global.playData.players[0].sp_activations < 4)
			{
				show_debug_message("avg mult +1.0");
				global.playData.players[0].avg_multiplier += 1.0;
			}
		break;
		
		case global.jokers.ghostbuster:        
			//+1.0 Avg Mult if Ghost Inputs < 20
			if (global.playData.players[0].frets_ghosted < 20)
			{
				show_debug_message("avg mult +1.0");
				global.playData.players[0].avg_multiplier += 1.0;
			}
		break;
		
		case global.jokers.jackOfAllTrades:    
			//+1.0 Avg Mult if weakest Section > 80%
			var weakestSec = 0
			for (var i=0;i<(global.playData.players[0].section_count-1);i++;)
			{
				if ((global.playData.players[0].section_stats[i].notes_hit / global.playData.players[0].section_stats[i].notes_count)*100 < weakestSec)
				{
					weakestSec = (global.playData.players[0].section_stats[i].notes_hit / global.playData.players[0].section_stats[i].notes_count)*100;
				}
			}
			if (weakestSec > 80)
			{
				show_debug_message("avg mult +1.0");
				global.playData.players[0].avg_multiplier += 1.0;
			}
		break;
		
		case global.jokers.booster:            
			//+1.0 Avg Mult
			show_debug_message("avg mult +1.0");
			global.playData.players[0].avg_multiplier += 1.0;
		break;
		
		case global.jokers.oneUp:              
			//+1 Star
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.turboPower:         
			//x1.5 Avg Mult
			show_debug_message("avg mult x1.5");
			global.playData.players[0].avg_multiplier *= 1.5;
		break;
		
		case global.jokers.superPower:         
			//x2.0 Avg Mult
			show_debug_message("avg mult x2.0");
			global.playData.players[0].avg_multiplier *= 2.0;
		break;
		
		case global.jokers.instantReplay:      
			//Becomes a copy of the most recently acquired Buff
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.copycat:            
			//Becomes a copy of the next acquired Buff
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.optionalNotes:      
			//x0.5 [Notes Missed]
			show_debug_message("notes missed x0.5");
			global.playData.players[0].notes_missed *= 0.5
		break;
		
		case global.jokers.astigmatism:        
			//x1.5 [Best Streak]
			show_debug_message("best streak x1.5");
			global.playData.players[0].max_streak *= 1.5;
		break;
		
		case global.jokers.juggernaut:         
			//-20 [Overstrums]
			show_debug_message("overstrums -20");
			global.playData.players[0].excess_hits = max(0, global.playData.players[0].excess_hits-20);
		break;
		
		case global.jokers.phrasing:           
			//+5 [Phrases Hit]
			show_debug_message("SP phrases hit +5");
			global.playData.players[0].sp_phrases_earned += 5;
		break;
		
		case global.jokers.doubleTime:         
			//x2.0 [SP Active Time]
			show_debug_message("time in SP x2");
			global.playData.players[0].time_in_sp *= 2;
		break;
		
		case global.jokers.elusiveSpirit:      
			//x0.5 [Ghost Inputs]
			show_debug_message("ghost inputs x0.5");
			global.playData.players[0].frets_ghosted *= 0.5;		
		break;
		
		case global.jokers.growthSpurt:        
			//<Growing> Buffs grow twice
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.highEndurance:      
			//<Decaying> Buffs decay half as much
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.employeeDiscount:   
			//Shop Items cost 1 less
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.fireSale:           
			//Shop Items prices 50% off
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.restock:            
			//Song Refresh costs 4 less
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.doubleTap:          
			//Consumables duplicate when used. Activates after using 10 Consumables
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.overkill:           
			//x3.0 Avg Mult. Activates after 5 FCs
			if !variable_global_exists("global.jokers.overkill.subCount"){global.jokers.overkill.subCount = 0;}
			if (global.playData.players[0].is_fc = true){global.jokers.overkill.subCount += 1;}
			if (global.jokers.overkill.subCount >=5) {global.jokers.overkill.count = 1;}
			if (global.jokers.overkill.count = 1){
				show_debug_message("avg mult x3");
				global.playData.players[0].avg_multiplier *= 3.0;
			}
		break;
		
		case global.jokers.blackHole:          
			//x10.0 Avg Mult. Activates after 1000 Notes Missed
			if !variable_global_exists("global.jokers.blackHole.subCount"){global.jokers.blackHole.subCount=0;}
			global.jokers.blackHole.subCount += global.playData.players[0].notes_missed;
			if (global.jokers.blackHole.subCount > 1000){global.jokers.blackHole.count = 1;}
			if (global.jokers.blackHole.count = 1)
			{
				show_debug_message("avg mult x10");
				global.playData.players[0].avg_multiplier *= 10.0;
			}
		break;
		
		case global.jokers.collector:          
			//+10 Stars. Activates after 100 base Stars acquired
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.magicEraser:        
			//[Overstrums] and [Ghost Inputs] are set to 0. Activates after either are greater than [Total Notes]
			if ((global.playData.players[0].excess_hits>global.playData.players[0].total_notes) or (global.playData.players[0].frets_ghosted>global.playData.players[0].total_notes))
			{
				global.jokers.magicEraser.count = 1;
			}
			if (global.jokers.magicEraser.count = 1)
			{
				show_debug_message("overstrums and ghost inputs set to 0");
				global.playData.players[0].excess_hits = 0;
				global.playData.players[0].frets_ghosted = 0;
			}
		break;
		
		case global.jokers.sleightOfHand:      
			//Adds x0.1 Avg Mult for every 5% song speed above 100
		
		break;
		
		case global.jokers.challenger:         
			//Adds x0.2 Avg Mult for every active challenge modifier
		
		break;
		
		case global.jokers.setInStone:         
			//Setlist rerolls locked, shop items are free
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.stonks:             
			//+0.05 Avg Mult for every Currency
		
		break;
		
		case global.jokers.rngesus:            
			//Random range from -2.0 to +5.0 Avg Mult
		
		break;
		
		case global.jokers.staminup:           
			//+0.0 Avg Mult, increases by +0.5 per Song
		
		break;
		
		case global.jokers.powerHungry:        
			//+1.0 Avg Mult to next Song per Consumable used, resets afterwards.
		
		break;
		
		case global.jokers.revive:             
			//Prevents death, destroyed when used.
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.surplus:            
			//Gain one random consumable after each Song
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.nullCombo:          
			//All Songs are considered FCs, but your notes hit/missed/streak are unchanged.
		
		break;
		
		case global.jokers.gluttony:           
			//+0.0 Avg Mult, increases by +0.1 per Consumable used
		
		break;
		
		case global.jokers.bassGrooved:        
			//Each note in [Best Streak] is worth an extra 100 points
		
		break;
		
		case global.jokers.soloSuite:          
			//[Solo Bonus] Now contributes to Avg Mult
		
		break;
		
		case global.jokers.calculated:         
			//x2.0 Avg Mult if [Overstrums] = 10
		
		break;
		
		case global.jokers.inconsistent:       
			//x3.0 Avg Mult if [Best Streak] < 50
		
		break;
		
		case global.jokers.starPower:          
			//+1 Star per [Base Star]
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.backHeavy:          
			//x1.5 Avg Mult if [Final Streak] = [Best Streak]
		
		break;
		
		case global.jokers.reverseChoke:       
			//x2 Stars. Activates after missing only one note in the first section of the song.
		
		break;
		
		case global.jokers.awesomeChoke:       
			//x2 Stars. Activates after missing only one note in the final section of the song.
		
		break;
		
		default:
			show_debug_message("unimplemented joker. uh oh !");

		break;
	}
}