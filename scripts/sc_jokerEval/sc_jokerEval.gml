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

function starPopup(type, value)
{
	var newPopup = instance_create_layer(970,440,"PopupLayer",o_popupMult);
	newPopup.popupType = type;
	newPopup.popupValue = value;
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
			show_debug_message("setting notes hit and missed to total");
			global.playData.players[0].notes_hit = global.playData.players[0].total_notes;
			global.playData.players[0].notes_missed = global.playData.players[0].total_notes;
		break;
				
		case global.jokers.wip:                
			//First setlist reroll is free
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.crowd:              
			//Setlist rerolls cost double, x1.5 Avg Mult
			show_debug_message("avg mult x1.5");
			starPopup("Multi",1.5);
			global.playData.players[0].avg_multiplier *= 1.5;
			show_debug_message("this joker is also triggered elsewhere");
		break;
		
		case global.jokers.vip:                
			//+2 Currency per song
			show_debug_message("adding 2 money")
			global.gameMoney += 2;
			var notif = instance_create_layer(400,125,"PopupLayer",o_popupInt);
			notif.popupLabel = 2;
		break;
		
		case global.jokers.noteworthy:         
			//+0.1 Avg Mult per 100 Notes Hit
			show_debug_message("avg mult +" + string(0.1 * floor(global.playData.players[0].notes_hit / 100)));
			starPopup("Plus",(0.1 * floor(global.playData.players[0].notes_hit / 100)));
			global.playData.players[0].avg_multiplier += (0.1 * floor(global.playData.players[0].notes_hit / 100));
			
		break;
		
		case global.jokers.aPlus:              
			//+0.1 Avg Mult per Notes Hit % above 90%
			var above90 = max(percentage-90,0);
			show_debug_message("avg mult +" + string(0.1 * above90));
			starPopup("Plus",(0.1 * above90));
			global.playData.players[0].avg_multiplier += (0.1 * above90);
		break;
		
		case global.jokers.serial:             
			//+0.005 Avg Mult per note in Best Streak
			show_debug_message("avg mult +" + string(0.005 * global.playData.players[0].max_streak));
			starPopup("Plus",(0.005 * global.playData.players[0].max_streak));
			global.playData.players[0].avg_multiplier += (0.005 * global.playData.players[0].max_streak);
		break;
		
		case global.jokers.plugged:            
			//+0.1 Avg Mult per SP Phrase
			show_debug_message("avg mult +" + string(0.1 * global.playData.players[0].sp_phrases_earned));
			starPopup("Plus",(0.1 * global.playData.players[0].sp_phrases_earned));
			global.playData.players[0].avg_multiplier += (0.1 * global.playData.players[0].sp_phrases_earned);
		break;
		
		case global.jokers.discharged:         
			//+0.2 Avg Mult per Activation
			show_debug_message("avg mult +" + string(0.2 * global.playData.players[0].sp_activations));
			starPopup("Plus",(0.2 * global.playData.players[0].sp_activations));
			global.playData.players[0].avg_multiplier += (0.2 * global.playData.players[0].sp_activations);
		break;
		
		case global.jokers.adrenaline:         
			//+0.01 Avg Mult per second of SP Time Active (rounded down)
			show_debug_message("avg mult +" + string(0.01 * floor(global.playData.players[0].time_in_sp)));
			starPopup("Plus",(0.01 * floor(global.playData.players[0].time_in_sp)));
			global.playData.players[0].avg_multiplier += (0.01 * floor(global.playData.players[0].time_in_sp));
		break;
		
		case global.jokers.sustain:            
			//+0.01 Avg Mult per 100 sustain points
			show_debug_message("avg mult +" + string(0.01 * (floor(global.playData.players[0].sustain_score / 100))));
			starPopup("Plus",(0.01 * (floor(global.playData.players[0].sustain_score / 100))));
			global.playData.players[0].avg_multiplier += (0.01 * (floor(global.playData.players[0].sustain_score / 100)));
		break;
		
		case global.jokers.sharpshooter:       
			//+0.1 Avg Mult per 100% Section 
			show_debug_message("avg mult +" + string((0.1 * perfectSec)));
			starPopup("Plus",(0.1 * perfectSec));
			global.playData.players[0].avg_multiplier += (0.1 * perfectSec);
		break;
		
		case global.jokers.cent:               
			//x1.00 Avg Mult, increases by x0.001 per 100 Notes Hit
			increase = floor(global.playData.players[0].notes_hit / 100);
			global.jokers.cent.count += increase;
			if playerOwnsGrowthSpurt(){global.jokers.cent.count += increase;}
			show_debug_message("avg mult x" + string(1 + (0.001 * global.jokers.cent.count)));
			starPopup("Multi",(1 + (0.001 * global.jokers.cent.count)));
			global.playData.players[0].avg_multiplier *= (1 + (0.001 * global.jokers.cent.count));
		break;
		
		case global.jokers.constellation:      
			//+0.00 Avg Mult, increases by +0.05 per Base Star
			increase = global.playDataBase.players[0].stars;
			global.jokers.constellation.count += increase;
			if playerOwnsGrowthSpurt(){global.jokers.constellation.count += increase;}
			show_debug_message("avg mult +" + string(0.05 * global.jokers.constellation.count));
			starPopup("Plus",(0.05 * global.jokers.constellation.count));
			global.playData.players[0].avg_multiplier += 0.05 * global.jokers.constellation.count;
		break;
		
		case global.jokers.flawless:           
			//+0.0 Avg Mult, increases by +0.8 per FC
			if global.playData.players[0].is_fc {increase = 1;}
			else {increase = 0;}
			global.jokers.flawless.count += increase;
			if playerOwnsGrowthSpurt(){global.jokers.flawless.count += increase;}
			show_debug_message("avg mult +" + string(0.8 * global.jokers.flawless.count));
			starPopup("Plus",( 0.8 * global.jokers.flawless.coun));
			global.playData.players[0].avg_multiplier += 0.8 * global.jokers.flawless.count;
		break;
		
		case global.jokers.meticulous:         
			//+0.0 Avg Mult, increases +0.2 per song over 90%
			if (percentage >= 90){increase = 1;}
			else {increase=0;}
			global.jokers.meticulous.count += increase;
			if playerOwnsGrowthSpurt(){global.jokers.meticulous.count+=increase;}
			show_debug_message("avg mult +" + string(0.2 * global.jokers.meticulous.count));
			starPopup("Plus",(0.2 * global.jokers.meticulous.count));
			global.playData.players[0].avg_multiplier += (0.2 * global.jokers.meticulous.count);
		break;
		
		case global.jokers.kickingAss:         
			//+0.2 Avg Mult, increases 0.1 per Best Streak over 500
			if (global.playData.players[0].max_streak >= 500){increase=1;}
			else {increase=0;}
			global.jokers.kickingAss.count += increase;
			if playerOwnsGrowthSpurt(){global.jokers.kickingAss.count += increase;}
			show_debug_message("avg mult +" + string((0.2 + (0.1*global.jokers.kickingAss.count))));
			starPopup("Plus",(0.2 + (0.1*global.jokers.kickingAss.count)));
			global.playData.players[0].avg_multiplier += (0.2 + (0.1*global.jokers.kickingAss.count));
		break;
		
		case global.jokers.takingNames:        
			//x1.2 Avg Mult, increases 0.1 per Best Streak over 1000
			if (global.playData.players[0].max_streak >=1000){increase=1;}
			else {increase=0;}
			global.jokers.takingNames.count += increase;
			if playerOwnsGrowthSpurt(){global.jokers.takingNames.count += increase;}
			show_debug_message("avg mult x" + string(1.2 + (0.1*global.jokers.takingNames.count)));
			starPopup("Multi",(1.2 + (0.1*global.jokers.takingNames.count)));
			global.playData.players[0].avg_multiplier *= (1.2 + (0.1*global.jokers.takingNames.count));
		break;
		
		case global.jokers.livewire:           
			// +0.1 Avg Multiplier per [SP Bars Filled]
			var spBars = floor(global.playData.players[0].sp_ticks_accumulated / global.playData.players[0].sp_bar_ticks);
			show_debug_message("avg mult +" + string(0.1*spBars));
			starPopup("Plus",(0.1 * spBars));
			global.playData.players[0].avg_multiplier += (0.1 * spBars);
		break;
		
		case global.jokers.zoning:             
			//+0.0 Avg Mult, increases 0.1 per 100% Section
			increase = perfectSec;
			global.jokers.zoning.count += increase;
			if playerOwnsGrowthSpurt(){global.jokers.zoning.count += increase;}
			show_debug_message("avg mult +" + string(0.02 * global.jokers.zoning.count));
			starPopup("Plus",(0.02 * global.jokers.zoning.count));
			global.playData.players[0].avg_multiplier += (0.02 * global.jokers.zoning.count);
		break;
		
		case global.jokers.allYourBase:        
			//+0.00 Avg Mult, increases by +0.01 per 1000 Base Note Points
			increase = floor(global.playDataBase.players[0].note_score / 2000);
			global.jokers.allYourBase.count += increase;
			if playerOwnsGrowthSpurt(){global.jokers.allYourBase.count += increase;}
			show_debug_message("avg mult +" + string(0.01 * global.jokers.allYourBase.count));
			starPopup("Plus",(0.01 * global.jokers.allYourBase.count));
			global.playData.players[0].avg_multiplier += (0.01 * global.jokers.allYourBase.count);
		break;
		
		case global.jokers.extraCredit:        
			//x1.5 Avg Mult, reduces by x0.01 per Percentage under 100%
			decay = 100 - percentage;
			if playerOwnsHighEndurance(){decay = floor(decay/2);}
			global.jokers.extraCredit.count += decay;
			show_debug_message("avg mult x" + string(1.5 - (0.01 * global.jokers.extraCredit.count)));
			starPopup("Multi",(1.5 - (0.01 * global.jokers.extraCredit.count)));
			global.playData.players[0].avg_multiplier *= (1.5 - (0.01 * global.jokers.extraCredit.count));
		break;
		
		case global.jokers.evaporation:        
			//+2.0 Avg Mult, reduces by -0.01 per Note Missed
			decay = global.playData.players[0].notes_missed;
			if playerOwnsHighEndurance(){decay = floor(decay/2);}
			global.jokers.evaporation.count += decay;
			show_debug_message("avg mult +" + string(2.0 - (0.01*global.jokers.evaporation.count)));
			starPopup("Plus",(2.0 - (0.01*global.jokers.evaporation.count)));
			global.playData.players[0].avg_multiplier += (2.0 - (0.01*global.jokers.evaporation.count));
		break;
		
		case global.jokers.borrowedTime:       
			//+2.0 Avg Mult, reduces by -0.2 per Song
			decay = 2
			if playerOwnsHighEndurance(){decay=1;}
			show_debug_message("avg mult +" + string(2.0 - (0.1*global.jokers.borrowedTime.count)));
			starPopup("Plus",(2.0 - (0.1*global.jokers.borrowedTime.count)));
			global.playData.players[0].avg_multiplier += (2.0 - (0.1*global.jokers.borrowedTime.count)); //this one is -0.1 since we're decaying it by 2 (so that the half decay still works if the player has high endurance)
			global.jokers.borrowedTime.count += decay; //we want this one to decay after it applies the bonus since it decays per song
		break;
		
		case global.jokers.aberration:         
			//+2.0 Avg Mult, reduces by -0.1 per Overstrum
			decay = global.playData.players[0].excess_hits;
			if playerOwnsHighEndurance(){decay = floor(decay/2);}
			global.jokers.aberration.count += decay;
			show_debug_message("avg mult +" + string(2.0 - (0.1*global.jokers.aberration.count)));
			starPopup("Plus",(2.0 - (0.1*global.jokers.aberration.count)));
			global.playData.players[0].avg_multiplier += (2.0 - (0.1*global.jokers.aberration.count));
		break;
		
		case global.jokers.idiomatic:          
			//x2.0 Avg Mult, reduces by -0.1 per missed Phrase
			decay = global.playData.players[0].sp_phrases_missed;
			if playerOwnsHighEndurance(){decay=floor(decay/2);}
			global.jokers.idiomatic.count += decay;
			show_debug_message("avg mult x" + string(2.0 - (0.1*global.jokers.idiomatic.count)));
			starPopup("Multi",(2.0 - (0.1*global.jokers.idiomatic.count)));
			global.playData.players[0].avg_multiplier *= (2.0 - (0.1*global.jokers.idiomatic.count));
		break;
		
		case global.jokers.spiritJar:          
			//+2.0 Avg Mult, reduces by -0.1 per 10 Ghost Inputs
			decay = floor(global.playData.players[0].frets_ghosted / 5);
			if playerOwnsHighEndurance(){decay=floor(decay/2);}
			global.jokers.spiritJar.count += decay;
			show_debug_message("avg mult +" + string(2.0 - (0.1*global.jokers.spiritJar.count)));
			starPopup("Plus",(2.0 - (0.1*global.jokers.spiritJar.count)));
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
			var tipNotif = instance_create_layer(400,125,"PopupLayer",o_popupInt);
			tipNotif.popupLabel = max(0,(4 - global.jokers.bigTipper.count));
		break;
		
		case global.jokers.satisfying:         
			//+5.0 Avg Mult if Best Streak is divisible by 100
			if (global.playData.players[0].max_streak mod 100 = 0)
			{
				show_debug_message("avg mult +5.0");
				starPopup("Plus",5.0);
				global.playData.players[0].avg_multiplier += 5.0;
			}
		break;
		
		case global.jokers.friedChicken:       
			//x2.0 Avg Mult if FC
			if (global.playData.players[0].is_fc = true)
			{
				show_debug_message("avg mult x2.0");
				starPopup("Multi",2.0);
				global.playData.players[0].avg_multiplier *= 2.0;
			}
		break;
		
		case global.jokers.bullseye:           
			//+4.4 Avg Mult if Base Avg Mult is between 4.400 - 4.450
			if (global.playDataBase.players[0].avg_multiplier >=4.40 and global.playDataBase.players[0].avg_multiplier <= 4.45)
				{
					show_debug_message("avg mult +4.4");
					starPopup("Plus",4.4);
					global.playData.players[0].avg_multiplier += 4.4;
				}
		break;
		
		case global.jokers.rhythmic:           
			//x1.5 Avg Mult if Overstrums is 0
			if (global.playData.players[0].excess_hits = 0)
			{
				show_debug_message("avg mult x1.5");
				starPopup("Multi",1.5);
				global.playData.players[0].avg_multiplier *= 1.5;
			}
		break;
		
		case global.jokers.fameAndFortune:     
			//x1.5 Avg Mult if all SP Phrases hit
			if (global.playData.players[0].sp_phrases_missed = 0)
			{
				show_debug_message("avg mult x1.5");
				starPopup("Multi",1.5);
				global.playData.players[0].avg_multiplier *= 1.5;
			}
		break;
		
		case global.jokers.exorcism:           
			//x1.5 Avg Mult if Ghost Inputs is <10
			if (global.playData.players[0].frets_ghosted < 10)
			{
				show_debug_message("avg mult x1.5");
				starPopup("Multi",1.5);
				global.playData.players[0].avg_multiplier *= 1.5;
			}
		break;
		
		case global.jokers.hotStreak:          
			//x1.2 Avg Mult if Best Streak > 500
			if (global.playData.players[0].max_streak > 500)
			{
				show_debug_message("avg mult x1.2");
				starPopup("Multi",1.2);
				global.playData.players[0].avg_multiplier *= 1.2;
			}
		break;
		
		case global.jokers.studied:            
			//+1.0 Avg Mult if Percentage > 90%
			if (percentage > 90)
			{
				show_debug_message("avg mult +1.0");
				starPopup("Plus",1.0);
				global.playData.players[0].avg_multiplier += 1.0;
			}
		break;
		
		case global.jokers.waterHole:          
			//+1.0 Avg Mult if Notes Missed < 50
			if (global.playData.players[0].notes_missed < 50)
			{
				show_debug_message("avg mult +1.0");
				starPopup("Plus",1.0);
				global.playData.players[0].avg_multiplier += 1.0;
			}
		break;
		
		case global.jokers.discipline:         
			//+1.0 Avg Mult if Overstrums < 25
			if (global.playData.players[0].excess_hits < 25)
			{
				show_debug_message("avg mult +1.0");
				starPopup("Plus",1.0);
				global.playData.players[0].avg_multiplier += 1.0;
			}
		break;
		
		case global.jokers.pyrotechnic:        
			//+1.0 Avg Mult if Activations > 4
			if (global.playData.players[0].sp_activations > 4)
			{
				show_debug_message("avg mult +1.0");
				starPopup("Plus",1.0);
				global.playData.players[0].avg_multiplier += 1.0;
			}
		break;
		
		case global.jokers.hesitant:           
			//+1.0 Avg Mult if Activations < 4
			if (global.playData.players[0].sp_activations < 4)
			{
				show_debug_message("avg mult +1.0");
				starPopup("Plus",1.0);
				global.playData.players[0].avg_multiplier += 1.0;
			}
		break;
		
		case global.jokers.ghostbuster:        
			//+1.0 Avg Mult if Ghost Inputs < 20
			if (global.playData.players[0].frets_ghosted < 20)
			{
				show_debug_message("avg mult +1.0");
				starPopup("Plus",1.0);
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
				starPopup("Plus",1.0);
				global.playData.players[0].avg_multiplier += 1.0;
			}
		break;
		
		case global.jokers.booster:            
			//+1.0 Avg Mult
			show_debug_message("avg mult +1.0");
			starPopup("Plus",1.0);
			global.playData.players[0].avg_multiplier += 1.0;
		break;
				
		case global.jokers.oneUp:              
			//+1 Star
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.turboPower:         
			//x1.2 Avg Mult
			show_debug_message("avg mult x1.2");
			starPopup("Multi",1.2);
			global.playData.players[0].avg_multiplier *= 1.2;
		break;
		
		case global.jokers.superPower:         
			//x1.5 Avg Mult
			show_debug_message("avg mult x1.5");
			starPopup("Multi",1.5);
			global.playData.players[0].avg_multiplier *= 1.5;
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
			//+1.0 avg mult per [Squeezed Note]
			show_debug_message("avg mult +" + string(global.playData.players[0].squeezed_notes));
			starPopup("Plus",global.playData.players[0].squeezed_notes);
			global.playData.players[0].avg_multiplier += global.playData.players[0].squeezed_notes;
		break;

		case global.jokers.overkill:           
			//x3.0 Avg Mult. Activates after 5 FCs
			if (global.playData.players[0].is_fc = true){global.jokers.overkill.subCount += 1;}
			if (global.jokers.overkill.subCount >=5) {
				global.jokers.overkill.count = 1;
				with (o_InventoryPanel){event_user(1);}
				}
			if (global.jokers.overkill.count = 1){
				show_debug_message("avg mult x3");
				starPopup("Multi",3.0);
				global.playData.players[0].avg_multiplier *= 3.0;
			}
		break;
		
		case global.jokers.blackHole:          
			//x10.0 Avg Mult. Activates after 1000 Notes Missed
			global.jokers.blackHole.subCount += global.playData.players[0].notes_missed;
			if (global.jokers.blackHole.subCount > 1000){
				global.jokers.blackHole.count = 1;
				with (o_InventoryPanel){event_user(1);}
				}
			if (global.jokers.blackHole.count = 1)
			{
				show_debug_message("avg mult x10");
				starPopup("Multi",10.0);
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
				with (o_InventoryPanel){event_user(1);}
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
			var speedAbove100 = max(0,((global.playData.playback_speed / 5) - 20));
			show_debug_message("avg mult x" + string(1.0 + (0.1*speedAbove100)));
			starPopup("Multi",(1.0 + (0.1*speedAbove100)));
			global.playData.players[0].avg_multiplier *= (1.0 + (0.1*speedAbove100));
		break;
		
		case global.jokers.challenger:         
			//Adds x0.2 Avg Mult for every active challenge modifier
			var numberOfMods = array_length(global.playedSongsData[(array_length(global.playedSongsData)-1)].modifiers);
			show_debug_message("avg mult x" + string((1.0 + (0.2*numberOfMods))));
			starPopup("Multi",(1.0 + (0.2*numberOfMods)));
			global.playData.players[0].avg_multiplier *= (1.0 + (0.2*numberOfMods));
		break;
				
		case global.jokers.setInStone:         
			//Setlist rerolls locked, shop items are free
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.stonks:             
			//+0.05 Avg Mult for every Currency
			show_debug_message("avg mult +" + string(0.05*global.gameMoney));
			starPopup("Plus",(0.05 * global.gameMoney));
			global.playData.players[0].avg_multiplier += (0.05 * global.gameMoney);
		break;
		
		case global.jokers.rngesus:            
			//Random range from -2.0 to +5.0 Avg Mult
			randomize();
			var randomVal = random_range(-2.0,5.0);
			show_debug_message("avg mult +" + string(randomVal));
			starPopup("Plus",randomVal);
			global.playData.players[0].avg_multiplier += randomVal;
		break;
		
		case global.jokers.staminup:           
			//+0.0 Avg Mult, increases by +0.5 per Song
			global.jokers.staminup.count += 1;
			if playerOwnsGrowthSpurt(){global.jokers.staminup.count +=1;}
			show_debug_message("avg mult +" + string(0.2*global.jokers.staminup.count));
			starPopup("Plus",(0.2*global.jokers.staminup.count));
			global.playData.players[0].avg_multiplier += (0.2*global.jokers.staminup.count);		
		break;
		
		case global.jokers.powerHungry:        
			//+1.0 Avg Mult for every SP bar filled
			var barsFilled = floor(global.playData.players[0].sp_ticks_accumulated / global.playData.players[0].sp_bar_ticks);
			show_debug_message("avg mult +" + string(barsFilled));
			starPopup("Plus",barsFilled);
			global.playData.players[0].avg_multiplier += barsFilled;
		break;
		
		case global.jokers.revive:             
			//Prevents death, destroyed when used.
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.surplus:            
			//Gain one random consumable after each Song
			if (array_length(global.itemInventory) < 3)
			{
				//delete inventory items from available list
				var availableItems = struct_get_names(global.items);
				for (var i = 0; i < array_length(availableItems); i++){
					if (array_contains(global.itemInventory,global.items[$ availableItems[i]])){
						array_delete(availableItems, i, 1);
						i--;
					}
				}
				//choose random item from available list
				var randomItem = irandom(array_length(availableItems)-1);
				array_push(global.itemInventory,global.items[$ availableItems[randomItem]]);
				starPopup("Text", "Consumable Gained");
				with (o_InventoryPanel){event_user(1);}
			}
		break;
		
		case global.jokers.nullCombo:          
			//All Songs are considered FCs, but your notes hit/missed/streak are unchanged.
			show_debug_message("fc stat set to true");
			global.playData.players[0].is_fc = true;
		break;
		
		case global.jokers.gluttony:           
			//+0.0 Avg Mult, increases by +0.1 per Consumable used
			show_debug_message("avg mult +" + string(0.1 * global.jokers.gluttony.count));
			starPopup("Plus",(0.1 * global.jokers.gluttony.count));
			global.playData.players[0].avg_multiplier += (0.1 * global.jokers.gluttony.count);
		break;
		
		case global.jokers.bassGrooved:        
			//+0.005 avg mult per note in end streak
			show_debug_message("avg mult +" + string(0.005 * global.playData.players[0].end_streak));
			starPopup("Plus",(0.005 * global.playData.players[0].end_streak));
			global.playData.players[0].avg_multiplier += (0.005 * global.playData.players[0].end_streak);
		break;
		
		case global.jokers.soloSuite:          
			//+0.005 Avg Mult per note hit in a Solo section
			var soloNotes = 0;
			for (var i=0;i<(global.playData.players[0].section_count-1);i++;)
			{
				if ((string_pos("solo", string_lower(global.playData.players[0].section_stats[i].section_name)) != 0))
				{
					soloNotes += global.playData.players[0].section_stats[i].notes_hit;	
				}
			}
			show_debug_message("avg mult +" + string(0.005*soloNotes));
			starPopup("Plus",(0.005 * soloNotes));
			global.playData.players[0].avg_multiplier += (0.005 * soloNotes);
		break;
		
		case global.jokers.calculated:         
			//x2.0 Avg Mult if [Overstrums] = 10
			if (global.playData.players[0].excess_hits = 10)
			{
				show_debug_message("avg mult x2");
				starPopup("Multi",2.0);
				global.playData.players[0].avg_multiplier *= 2;
			}
		break;
		
		case global.jokers.inconsistent:       
			//x3.0 Avg Mult if [Best Streak] < 50
			if (global.playData.players[0].max_streak < 50)
			{
				show_debug_message("avg mult x3");
				starPopup("Multi",3.0);
				global.playData.players[0].avg_multiplier *= 3;
			}
		break;
		
		case global.jokers.starPower:          
			//+1 Star per [Base Star]
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.backHeavy:          
			//x1.5 Avg Mult if [Final Streak] = [Best Streak]
			if (global.playData.players[0].max_streak = global.playData.players[0].end_streak)
			{
				show_debug_message("avg mult x1.5");
				starPopup("Multi",1.5);
				global.playData.players[0].avg_multiplier *= 1.5;
			}
		break;
				
		case global.jokers.reverseChoke:       
			//x2 Stars. Activates after missing only one note in the first section of the song.
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.awesomeChoke:       
			//x2 Stars. Activates after missing only one note in the final section of the song.
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.unstable:
			//x2 Stars. Self-destructs if you overstrum.
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		default:
			show_debug_message("unimplemented joker. uh oh !");
		break;
	}
}

function jokerEvalEnd(jokerToEvalEnd)
{
	resultsScreen = instance_find(o_resultsStar,0);
	switch(global.jokerInventory[jokerToEvalEnd])
	{
		case global.jokers.oneUp:              
			//+1 Star
			show_debug_message("+1 star");
			starPopup("Star",1);
			resultsScreen.starBonusAdd += 1;
		break;	
		
		case global.jokers.collector:          
			//+10 Stars. Activates after 100 base Stars acquired
			global.jokers.collector.subCount+= global.playDataBase.players[0].stars;
			if (global.jokers.collector.subCount >=100){
				global.jokers.collector.count = 1;
				with (o_InventoryPanel){event_user(1);}
				}
			if (global.jokers.collector.count = 1)
			{
				show_debug_message("+10 stars");
				starPopup("Star",10);
				resultsScreen.starBonusAdd += 10;
			}
		break;	

		case global.jokers.reverseChoke:       
			//x2 Stars. Activates after missing only one note in the first section of the song.
			if ((global.playData.players[0].notes_missed = 1) and (global.playData.players[0].section_stats[0].notes_missed = 1))
			{
				global.jokers.reverseChoke.count=1;
				with (o_InventoryPanel){event_user(1);}
			}
			if global.jokers.reverseChoke.count = 1
			{
				show_debug_message("x2 stars");
				starPopup("Star",resultsScreen.starsAchieved);
				resultsScreen.starBonusMultiplier *= 2; //multiplying instead of adding here in case other x2 stars things trigger at the end
			}		
		break;
		
		case global.jokers.awesomeChoke:       
			//x2 Stars. Activates after missing only one note in the final section of the song.
			var finalSec = array_length(global.playData.players[0].section_count) - 1;
			if ((global.playData.players[0].notes_missed = 1) and (global.playData.players[0].section_stats[finalSec].notes_missed = 1))
			{
				global.jokers.awesomeChoke.count=1;
				with (o_InventoryPanel){event_user(1);}
			}
			if global.jokers.awesomeChoke.count = 1
			{
				show_debug_message("x2 stars");
				starPopup("Star",resultsScreen.starsAchieved);
				resultsScreen.starBonusMultiplier *= 2; //multiplying instead of adding here in case other x2 stars things trigger at the end
			}	
		break;
		
		case global.jokers.unstable:
			//x2 Stars. Self-destructs if you overstrum.
			if (global.playData.players[0].excess_hits > 0)
			{
				show_debug_message("Unstable exploded lol");
				array_delete(global.jokerInventory,jokerToEvalEnd,1);
				with (o_InventoryPanel){event_user(1);}
			}
			else
			{
				show_debug_message("x2 stars");
				starPopup("Star",resultsScreen.starsAchieved);
				resultsScreen.starBonusMultiplier *= 2; //multiplying instead of adding here in case other x2 stars things trigger at the end
			}
		break;
		
		case global.jokers.starPower:
			//+1 Star per [Base Star]
			show_debug_message("stars +" + string(global.playDataBase.players[0].stars));
			starPopup("Star",global.playDataBase.players[0].stars);
			resultsScreen.starBonusAdd += global.playDataBase.players[0].stars;
		break;

	}
}