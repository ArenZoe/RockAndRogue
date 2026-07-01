function jokerEval(jokerToEval) 
{
	switch(global.jokerInventory[jokerToEval])
	{
		case global.jokers.shroedinger:        
			//[Notes Hit] and [Notes Missed] are set to [Total Notes]

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
			
		break;
		
		case global.jokers.noteworthy:         
			//+0.1 Avg Mult per 100 Notes Hit
			
		break;
		
		case global.jokers.aPlus:              
			//+0.1 Avg Mult per Notes Hit % above 90%
		
		break;
		
		case global.jokers.serial:             
			//+0.005 Avg Mult per note in Best Streak
		
		break;
		
		case global.jokers.plugged:            
			//+0.1 Avg Mult per SP Phrase
		
		break;
		
		case global.jokers.discharged:         
			//+0.2 Avg Mult per Activation
		
		break;
		
		case global.jokers.adrenaline:         
			//+0.01 Avg Mult per second of SP Time Active (rounded down)
		
		break;
		
		case global.jokers.sustain:            
			//+0.01 Avg Mult per 100 sustain points
		
		break;
		
		case global.jokers.sharpshooter:       
			//+0.1 Avg Mult per 100% Section 
		
		break;
		
		case global.jokers.cent:               
			//x1.00 Avg Mult, increases by x0.001 per 100 Notes Hit
		
		break;
		
		case global.jokers.constellation:      
			//+0.00 Avg Mult, increases by +0.05 per Base Star
		
		break;
		
		case global.jokers.flawless:           
			//+0.0 Avg Mult, increases by +0.8 per FC
		
		break;
		
		case global.jokers.meticulous:         
			//+0.0 Avg Mult, increases +0.2 per song over 90%
		
		break;
		
		case global.jokers.kickingAss:         
			//+0.2 Avg Mult, increases 0.1 per Best Streak over 500
		
		break;
		
		case global.jokers.takingNames:        
			//x1.2 Avg Mult, increases 0.1 per Best Streak over 1000
		
		break;
		
		case global.jokers.livewire:           
			// +0.1 Avg Multiplier per [SP Bars Filled]
		
		break;
		
		case global.jokers.zoning:             
			//+0.0 Avg Mult, increases 0.1 per 100% Section
		
		break;
		
		case global.jokers.allYourBase:        
			//+0.00 Avg Mult, increases by +0.01 per 1000 Base Note Points
		
		break;
		
		case global.jokers.extraCredit:        
			//x1.5 Avg Mult, reduces by x0.01 per Percentage under 100%
		
		break;
		
		case global.jokers.evaporation:        
			//+2.0 Avg Mult, reduces by -0.01 per Note Missed
		
		break;
		
		case global.jokers.borrowedTime:       
			//+2.0 Avg Mult, reduces by -0.2 per Song
		
		break;
		
		case global.jokers.aberration:         
			//+2.0 Avg Mult, reduces by -0.1 per Overstrum
		
		break;
		
		case global.jokers.idiomatic:          
			//x2.0 Avg Mult, reduces by -0.1 per missed Phrase
		
		break;
		
		case global.jokers.spiritJar:          
			//+2.0 Avg Mult, reduces by -0.1 per 10 Ghost Inputs
		
		break;
		
		case global.jokers.bigTipper:          
			//+4 Currency per song, reduces by 1 per Section under 90%
		
		break;
		
		case global.jokers.satisfying:         
			//+5.0 Avg Mult if Best Streak is divisible by 100
		
		break;
		
		case global.jokers.friedChicken:       
			//x2.0 Avg Mult if FC
		
		break;
		
		case global.jokers.bullseye:           
			//+4.4 Avg Mult if Base Avg Mult is between 4.400 - 4.450
		
		break;
		
		case global.jokers.rhythmic:           
			//x1.5 Avg Mult if Overstrums is 0
		
		break;
		
		case global.jokers.fameAndFortune:     
			//x1.5 Avg Mult if all SP Phrases hit
		
		break;
		
		case global.jokers.exorcism:           
			//x1.5 Avg Mult if Ghost Inputs is <10
		
		break;
		
		case global.jokers.hotStreak:          
			//x1.2 Avg Mult if Best Streak > 500
		
		break;
		
		case global.jokers.studied:            
			//+1.0 Avg Mult if Percentage > 90%
		
		break;
		
		case global.jokers.waterHole:          
			//+1.0 Avg Mult if Notes Missed < 50
		
		break;
		
		case global.jokers.discipline:         
			//+1.0 Avg Mult if Overstrums < 25
		
		break;
		
		case global.jokers.pyrotechnic:        
			//+1.0 Avg Mult if Activations > 4
		
		break;
		
		case global.jokers.hesitant:           
			//+1.0 Avg Mult if Activations < 4
		
		break;
		
		case global.jokers.ghostbuster:        
			//+1.0 Avg Mult if Ghost Inputs < 20
		
		break;
		
		case global.jokers.jackOfAllTrades:    
			//+1.0 Avg Mult if weakest Section > 80%
		
		break;
		
		case global.jokers.booster:            
			//+1.0 Avg Mult
		
		break;
		
		case global.jokers.oneUp:              
			//+1 Star
			show_debug_message("this joker is triggered elsewhere");
		break;
		
		case global.jokers.turboPower:         
			//x1.5 Avg Mult
		
		break;
		
		case global.jokers.superPower:         
			//x2.0 Avg Mult
		
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
		
		break;
		
		case global.jokers.astigmatism:        
			//x1.5 [Best Streak]
		
		break;
		
		case global.jokers.juggernaut:         
			//-20 [Overstrums]
		
		break;
		
		case global.jokers.phrasing:           
			//+5 [Phrases Hit]
		
		break;
		
		case global.jokers.doubleTime:         
			//x2.0 [SP Active Time]
		
		break;
		
		case global.jokers.elusiveSpirit:      
			//x0.5 [Ghost Inputs]
		
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
		
		break;
		
		case global.jokers.blackHole:          
			//x10.0 Avg Mult. Activates after 1000 Notes Missed
		
		break;
		
		case global.jokers.collector:          
			//+10 Stars. Activates after 100 Stars acquired
		
		break;
		
		case global.jokers.magicEraser:        
			//[Overstrums] and [Ghost Inputs] are set to 0. Activates after either are greater than [Total Notes]
		
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