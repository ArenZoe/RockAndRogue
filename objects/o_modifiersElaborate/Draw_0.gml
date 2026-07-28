var modifierDescs = "• Reset any changes you made to settings on the previous song!";

if (global.gameRound = 1){modifierDescs = "• Have fun!";}
for (var i=0;i<array_length(songModifier);i++)
{
	switch (songModifier[i]){
		case Modifiers.speedIncrease110:
			modifierDescs = string_concat(modifierDescs,"\n• Set song speed to 110%");
		break;
		case Modifiers.speedIncrease120:
			modifierDescs = string_concat(modifierDescs,"\n• Set song speed to 120%");
		break;
		case Modifiers.speedIncrease130:
			modifierDescs = string_concat(modifierDescs,"\n• Set song speed to 130%");
		break;
		case Modifiers.speedIncrease140:
			modifierDescs = string_concat(modifierDescs,"\n• Set song speed to 140%");
		break;
		case Modifiers.speedIncrease150:
			modifierDescs = string_concat(modifierDescs,"\n• Set song speed to 150%");
		break;
		case Modifiers.highwayLength90:
			modifierDescs = string_concat(modifierDescs,"\n• Set your highway length to 90%");
		break;
		case Modifiers.highwayLength80:
			modifierDescs = string_concat(modifierDescs,"\n• Set your highway length to 80%");
		break;
		case Modifiers.highwayLength60:
			modifierDescs = string_concat(modifierDescs,"\n• Set your highway length to 60%");
		break;
		case Modifiers.fixedNoteSpeed18:
			modifierDescs = string_concat(modifierDescs,"\n• Set your note speed to 18");
		break;
		case Modifiers.fixedNoteSpeed16:
			modifierDescs = string_concat(modifierDescs,"\n• Set your note speed to 16");
		break;
		case Modifiers.fixedNoteSpeed14:
			modifierDescs = string_concat(modifierDescs,"\n• Set your note speed to 14");
		break;
		case Modifiers.fixedNoteSpeed7:
			modifierDescs = string_concat(modifierDescs,"\n• Set your note speed to 7");
		break;
		case Modifiers.fixedNoteSpeed5:
			modifierDescs = string_concat(modifierDescs,"\n• Set your note speed to 5");
		break;
		case Modifiers.fixedNoteSpeed3:
			modifierDescs = string_concat(modifierDescs,"\n• Set your note speed to 3");
		break;
		//case Modifiers.modchartPrep:
			//modifierDescs = string_concat(modifierDescs,"\n• Enable the Modchart Prep modifier");
		//break;
		case Modifiers.strumlessHOPOs:
			modifierDescs = string_concat(modifierDescs,"\n• Enable the Strumless HOPOs modifier");
		break;
		case Modifiers.droplessSustains:
			modifierDescs = string_concat(modifierDescs,"\n• Enable the Dropless Sustains modifier");
		break;
		case Modifiers.mirrorMode:
			modifierDescs = string_concat(modifierDescs,"\n• Enable the Mirror Mode modifier");
		break;
		case Modifiers.brutalMode:
			modifierDescs = string_concat(modifierDescs,"\n• Enable the Brutal Mode modifier");
		break;
		case Modifiers.noteShuffle:
			modifierDescs = string_concat(modifierDescs,"\n• Enable the Note Shuffle modifier");
		break;
		case Modifiers.gemSize300:
			modifierDescs = string_concat(modifierDescs,"\n• Set your Gem Size to 300 in Settings > Gameplay");
		break;
		case Modifiers.gemSizeMinus25:
			modifierDescs = string_concat(modifierDescs,"\n• Set your Gem Size to -25 in Settings > Gameplay");
		break;
		case Modifiers.funnyHighway:
			modifierDescs = string_concat(modifierDescs,"\n• Change your highway to the all-white Funny Highway");
		break;
		case Modifiers.stealthColour:
			modifierDescs = string_concat(modifierDescs,"\n• Change your highway to the all-black Stealth Highway");
			modifierDescs = string_concat(modifierDescs,"\n• Change your colour profile to the Stealth Colours");
		break;
		case Modifiers.allStrums:
			modifierDescs = string_concat(modifierDescs,"\n• Enable the All Strums modifier");
		break;
		case Modifiers.noGhosting:
			modifierDescs = string_concat(modifierDescs,"\n• Enable the No Ghosting modifier");
		break;
		case Modifiers.doubleNotes:
			modifierDescs = string_concat(modifierDescs,"\n• Enable the Double Notes modifier");
		break;
		case Modifiers.leftyFlip:
			modifierDescs = string_concat(modifierDescs,"\n• Toggle your Lefty Flip setting to the opposite mode");
		break;
		case Modifiers.framerate60:
			modifierDescs = string_concat(modifierDescs,"\n• Set your Controller Poll Rate to 60Hz in Settings > Gameplay");
		break;
		case Modifiers.precisionMode:
			modifierDescs = string_concat(modifierDescs,"\n• Enable the Precision Mode modifier");
		break;
	}
}

for (var i=0;i<array_length(global.itemInventory);i++)
{
	if global.itemsActive[i]
	{
		switch global.itemInventory[i]
		{
			case global.items.autoStrum:
				modifierDescs = string_concat(modifierDescs,"\n• Enable the Auto Strum modifier\n• YOU MUST NOT BE IN LEADERBOARD MODE FOR AUTO-STRUM");
			break;
			
			case global.items.drunk:
				modifierDescs = string_concat(modifierDescs,"\n• Enable the Drunk Mode modifier");
			break;
			
			case global.items.hopos:
				modifierDescs = string_concat(modifierDescs,"\n• Enable the All HOPOs modifier");
			break;
			
			case global.items.hoposToTaps:
				modifierDescs = string_concat(modifierDescs,"\n• Enable the HOPOs to Taps modifier");
			break;
			
			case global.items.opens:
				modifierDescs = string_concat(modifierDescs,"\n• Enable the All Opens modifier");
			break;
			
			case global.items.picky:
				modifierDescs = string_concat(modifierDescs,"\n• You may ignore one (1) of the above instructions of your choice");
			break;
			
			case global.items.slow:
				modifierDescs = string_concat(modifierDescs,"\n• Reduce the Song Speed by 10%");
			break;
			
			case global.items.taps:
				modifierDescs = string_concat(modifierDescs,"\n• Enable the All Taps modifier");
			break;
		}
	}
}

draw_set_colour($FFFFFFFF);draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_font(f_latoBig)
draw_text(x+0,y+-10,"Pre-Song Instructions:");
draw_set_font(f_lato);
draw_text(x + 0, y + 20, modifierDescs);