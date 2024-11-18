/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 23A3CD50
/// @DnDArgument : "color" "$FF000000"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2C72312B
/// @DnDArgument : "code" "draw_roundrect_ext(x,y,x+112,y+48,5,5,false)"
draw_roundrect_ext(x,y,x+112,y+48,5,5,false)

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 69D2E1EA
/// @DnDArgument : "color" "$FFB2B2B2"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFB2B2B2 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5825328A
/// @DnDArgument : "code" "draw_roundrect_ext(x+2,y+2,x+110,y+46,5,5,false)"
draw_roundrect_ext(x+2,y+2,x+110,y+46,5,5,false)

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 2151DF27
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l2151DF27_0=($FF000000 >> 24);
draw_set_alpha(l2151DF27_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0B1EA3A7
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 235D9133
/// @DnDArgument : "font" "f_ssFontTiny"
/// @DnDSaveInfo : "font" "f_ssFontTiny"
draw_set_font(f_ssFontTiny);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 696DB7AA
/// @DnDArgument : "code" "var modifierName = "";$(13_10)$(13_10)switch (songModifier){$(13_10)	case Modifiers.speedIncrease110:$(13_10)		modifierName = "110% Speed";$(13_10)	break;$(13_10)	case Modifiers.speedIncrease120:$(13_10)		modifierName = "120% Speed";$(13_10)	break;$(13_10)	case Modifiers.speedIncrease130:$(13_10)		modifierName = "130% Speed";$(13_10)	break;$(13_10)	case Modifiers.speedIncrease140:$(13_10)		modifierName = "140% Speed";$(13_10)	break;$(13_10)	case Modifiers.speedIncrease150:$(13_10)		modifierName = "150% Speed";$(13_10)	break;$(13_10)	case Modifiers.highwayLength90:$(13_10)		modifierName = "Highway Length 90%";$(13_10)	break;$(13_10)	case Modifiers.highwayLength80:$(13_10)		modifierName = "Highway Length 80%";$(13_10)	break;$(13_10)	case Modifiers.highwayLength60:$(13_10)		modifierName = "Highway Length 60%";$(13_10)	break;$(13_10)	case Modifiers.fixedNoteSpeed18:$(13_10)		modifierName = "Note Speed 18";$(13_10)	break;$(13_10)	case Modifiers.fixedNoteSpeed16:$(13_10)		modifierName = "Note Speed 16";$(13_10)	break;$(13_10)	case Modifiers.fixedNoteSpeed14:$(13_10)		modifierName = "Note Speed 14";$(13_10)	break;$(13_10)	case Modifiers.fixedNoteSpeed7:$(13_10)		modifierName = "Note Speed 7";$(13_10)	break;$(13_10)	case Modifiers.fixedNoteSpeed5:$(13_10)		modifierName = "Note Speed 5";$(13_10)	break;$(13_10)	case Modifiers.fixedNoteSpeed3:$(13_10)		modifierName = "Note Speed 3";$(13_10)	break;$(13_10)	case Modifiers.modchartPrep:$(13_10)		modifierName = "Modchart Prep";$(13_10)	break;$(13_10)	case Modifiers.strumlessHOPOs:$(13_10)		modifierName = "Strumless HOPOs";$(13_10)	break;$(13_10)	case Modifiers.droplessSustains:$(13_10)		modifierName = "Dropless Sustains";$(13_10)	break;$(13_10)	case Modifiers.mirrorMode:$(13_10)		modifierName = "Mirror Mode";$(13_10)	break;$(13_10)	case Modifiers.brutalMode:$(13_10)		modifierName = "Brutal Mode";$(13_10)	break;$(13_10)	case Modifiers.noteShuffle:$(13_10)		modifierName = "Note Shuffle";$(13_10)	break;$(13_10)	case Modifiers.gemSize300:$(13_10)		modifierName = "Gem Size 300%";$(13_10)	break;$(13_10)	case Modifiers.gemSizeMinus25:$(13_10)		modifierName = "Gem Size -25%";$(13_10)	break;$(13_10)	case Modifiers.funnyHighway:$(13_10)		modifierName = "Funny Highway";$(13_10)	break;$(13_10)	case Modifiers.stealthColour:$(13_10)		modifierName = "Stealth Colours";$(13_10)	break;$(13_10)	case Modifiers.allStrums:$(13_10)		modifierName = "All Strums";$(13_10)	break;$(13_10)	case Modifiers.noGhosting:$(13_10)		modifierName = "No Ghosting";$(13_10)	break;$(13_10)	case Modifiers.doubleNotes:$(13_10)		modifierName = "Double Notes";$(13_10)	break;$(13_10)	case Modifiers.leftyFlip:$(13_10)		modifierName = "Lefty Flip";$(13_10)	break;$(13_10)	case Modifiers.framerate60:$(13_10)		modifierName = "FPS Cap 60";$(13_10)	break;$(13_10)	case Modifiers.framerate30:$(13_10)		modifierName = "FPS Cap 30";$(13_10)	break;$(13_10)	case Modifiers.precisionMode:$(13_10)		modifierName = "Precision Mode";$(13_10)	break;$(13_10)}$(13_10)$(13_10)draw_text_ext(x+56,y+25,string_copy(modifierName,0,35),15,75);"
var modifierName = "";

switch (songModifier){
	case Modifiers.speedIncrease110:
		modifierName = "110% Speed";
	break;
	case Modifiers.speedIncrease120:
		modifierName = "120% Speed";
	break;
	case Modifiers.speedIncrease130:
		modifierName = "130% Speed";
	break;
	case Modifiers.speedIncrease140:
		modifierName = "140% Speed";
	break;
	case Modifiers.speedIncrease150:
		modifierName = "150% Speed";
	break;
	case Modifiers.highwayLength90:
		modifierName = "Highway Length 90%";
	break;
	case Modifiers.highwayLength80:
		modifierName = "Highway Length 80%";
	break;
	case Modifiers.highwayLength60:
		modifierName = "Highway Length 60%";
	break;
	case Modifiers.fixedNoteSpeed18:
		modifierName = "Note Speed 18";
	break;
	case Modifiers.fixedNoteSpeed16:
		modifierName = "Note Speed 16";
	break;
	case Modifiers.fixedNoteSpeed14:
		modifierName = "Note Speed 14";
	break;
	case Modifiers.fixedNoteSpeed7:
		modifierName = "Note Speed 7";
	break;
	case Modifiers.fixedNoteSpeed5:
		modifierName = "Note Speed 5";
	break;
	case Modifiers.fixedNoteSpeed3:
		modifierName = "Note Speed 3";
	break;
	case Modifiers.modchartPrep:
		modifierName = "Modchart Prep";
	break;
	case Modifiers.strumlessHOPOs:
		modifierName = "Strumless HOPOs";
	break;
	case Modifiers.droplessSustains:
		modifierName = "Dropless Sustains";
	break;
	case Modifiers.mirrorMode:
		modifierName = "Mirror Mode";
	break;
	case Modifiers.brutalMode:
		modifierName = "Brutal Mode";
	break;
	case Modifiers.noteShuffle:
		modifierName = "Note Shuffle";
	break;
	case Modifiers.gemSize300:
		modifierName = "Gem Size 300%";
	break;
	case Modifiers.gemSizeMinus25:
		modifierName = "Gem Size -25%";
	break;
	case Modifiers.funnyHighway:
		modifierName = "Funny Highway";
	break;
	case Modifiers.stealthColour:
		modifierName = "Stealth Colours";
	break;
	case Modifiers.allStrums:
		modifierName = "All Strums";
	break;
	case Modifiers.noGhosting:
		modifierName = "No Ghosting";
	break;
	case Modifiers.doubleNotes:
		modifierName = "Double Notes";
	break;
	case Modifiers.leftyFlip:
		modifierName = "Lefty Flip";
	break;
	case Modifiers.framerate60:
		modifierName = "FPS Cap 60";
	break;
	case Modifiers.framerate30:
		modifierName = "FPS Cap 30";
	break;
	case Modifiers.precisionMode:
		modifierName = "Precision Mode";
	break;
}

draw_text_ext(x+56,y+25,string_copy(modifierName,0,35),15,75);