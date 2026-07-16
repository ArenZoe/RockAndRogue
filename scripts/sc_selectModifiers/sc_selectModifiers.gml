function selectModifiers(roundNumber,setlistIndex){
	var modifierTable = [
		[0,0,0],
		[1,0,0],
		[1,0,0],
		[1,0,0],
		[1,0,0],
		[1,0,0],
		[1,0,0],
		[0,0,0],
		[1,0,0],
		[0,0,0],
		[1,0,0],
		[0,0,0],
		[1,0,0],
		[0,1,2],
		[1,2,0],
		[2,0,0],
		[3,0,1],
		[0,1,2],
		[1,2,3],
		[2,3,4],
		[-1,-1,-1]
	];
	
	var modifierCount = modifierTable[clamp((roundNumber-1),0,array_length(modifierTable)-1),setlistIndex];
	
	var availableModifiersXCommon = [
		Modifiers.speedIncrease110,
		Modifiers.highwayLength90,
		Modifiers.fixedNoteSpeed7
	];
	var availableModifiersSCommon = [
		//Modifiers.modchartPrep,
		Modifiers.strumlessHOPOs
	];
	var availableModifiersCommon = [
		Modifiers.speedIncrease120,
		Modifiers.fixedNoteSpeed14,
		Modifiers.droplessSustains,
		Modifiers.mirrorMode,
		Modifiers.brutalMode,
		Modifiers.noteShuffle
	];
	var availableModifiersUncommon = [
		Modifiers.speedIncrease130,
		Modifiers.highwayLength80,
		Modifiers.fixedNoteSpeed16,
		Modifiers.fixedNoteSpeed5,
		Modifiers.gemSize300,
		Modifiers.funnyHighway,
		Modifiers.stealthColour
	];
	var availableModifiersRare = [
		Modifiers.speedIncrease140,
		Modifiers.highwayLength60,
		Modifiers.fixedNoteSpeed18,
		Modifiers.fixedNoteSpeed3,
		Modifiers.gemSizeMinus25,
		Modifiers.allStrums,
		Modifiers.noGhosting
	];
	var availableModifiersSRare = [
		Modifiers.speedIncrease150,
		Modifiers.doubleNotes,
		Modifiers.leftyFlip,
		Modifiers.framerate60
	];
	var availableModifiersXRare = [
		Modifiers.precisionMode
	];
	

	var assignedModifiers = [];
	
	if (modifierCount = -1){
		modifierCount = irandom(3) + 1;
	}
	
	for (var i = 0; i < modifierCount; i++){
		var assignedModifier;
		randomize();
		var randomNumber = irandom(479);
		
		if (randomNumber >= 290){//ultra common
			if (array_length(availableModifiersXCommon) > 0){
				assignedModifier = availableModifiersXCommon[irandom(array_length(availableModifiersXCommon)-1)];
				array_push(assignedModifiers, assignedModifier);
				array_delete(availableModifiersXCommon, array_get_index(availableModifiersXCommon, assignedModifier),1);	
			}
			else {
				randomNumber = 165;
			}
		}
		if (randomNumber < 290 and randomNumber >= 165){//super common
			if (array_length(availableModifiersSCommon) > 0){
				assignedModifier = availableModifiersSCommon[irandom(array_length(availableModifiersSCommon)-1)];
				array_push(assignedModifiers, assignedModifier);
				array_delete(availableModifiersSCommon, array_get_index(availableModifiersSCommon, assignedModifier),1);	
			}
			else {
				randomNumber = 71;	
			}
		}
		if (randomNumber < 165 and randomNumber >= 71){//common
			if (array_length(availableModifiersCommon) > 0){
				assignedModifier = availableModifiersCommon[irandom(array_length(availableModifiersCommon)-1)];
				array_push(assignedModifiers, assignedModifier);
				array_delete(availableModifiersCommon, array_get_index(availableModifiersCommon, assignedModifier),1);	
			}
			else {
				randomNumber = 11;	
			}
		}
		if (randomNumber < 71 and randomNumber >= 11){//uncommon
			if (array_length(availableModifiersUncommon) > 0){
				assignedModifier = availableModifiersUncommon[irandom(array_length(availableModifiersUncommon)-1)];
				array_push(assignedModifiers, assignedModifier);
				array_delete(availableModifiersUncommon, array_get_index(availableModifiersUncommon, assignedModifier),1);	
			}
			else {
				randomNumber = 5;	
			}
		}
		if (randomNumber < 11 and randomNumber >= 5){//rare
		if (array_length(availableModifiersRare) > 0){
				assignedModifier = availableModifiersRare[irandom(array_length(availableModifiersRare)-1)];
				array_push(assignedModifiers, assignedModifier);
				array_delete(availableModifiersRare, array_get_index(availableModifiersRare, assignedModifier),1);	
			}
			else {
				randomNumber = 2;	
			}
		}
		if (randomNumber < 5 and randomNumber >= 2){//super rare
			if (array_length(availableModifiersSRare) > 0){
				assignedModifier = availableModifiersSRare[irandom(array_length(availableModifiersSRare)-1)];
				array_push(assignedModifiers, assignedModifier);
				array_delete(availableModifiersSRare, array_get_index(availableModifiersSRare, assignedModifier),1);	
			}
			else {
				randomNumber = 1;	
			}
		}
		if (randomNumber < 2){ //ultra rare
			if (array_length(availableModifiersXRare) > 0){
				assignedModifier = availableModifiersXRare[irandom(array_length(availableModifiersXRare)-1)];
				array_push(assignedModifiers, assignedModifier);
				array_delete(availableModifiersXRare, array_get_index(availableModifiersXRare, assignedModifier),1);	
			}
		}
		
		//remove duplicate modifier types
		//modchart prep vs brutal
		//if (assignedModifier = Modifiers.modchartPrep){
			//if (array_get_index(availableModifiersCommon, Modifiers.brutalMode) != -1){
				//array_delete(availableModifiersCommon, array_get_index(availableModifiersCommon, Modifiers.brutalMode),1);
			//}
		//}
		//brutal vs modchart prep
		//if (assignedModifier = Modifiers.brutalMode){
			//if (array_get_index(availableModifiersSCommon, Modifiers.modchartPrep) != -1){
				//array_delete(availableModifiersSCommon, array_get_index(availableModifiersSCommon, Modifiers.modchartPrep),1);
			//}
		//}
		//all strums vs strumless hopos
		if (assignedModifier = Modifiers.allStrums){
			if (array_get_index(availableModifiersSCommon, Modifiers.strumlessHOPOs) != -1){
				array_delete(availableModifiersSCommon, array_get_index(availableModifiersSCommon, Modifiers.strumlessHOPOs),1);
			}
		}
		//strumless hopos vs all strums
		if (assignedModifier = Modifiers.strumlessHOPOs){
			if (array_get_index(availableModifiersRare, Modifiers.allStrums) != -1){
				array_delete(availableModifiersRare, array_get_index(availableModifiersRare, Modifiers.allStrums),1);
			}
		}
		//giant vs tiny notes
		if (assignedModifier = Modifiers.gemSize300){
			if (array_get_index(availableModifiersRare, Modifiers.gemSizeMinus25) != -1){
				array_delete(availableModifiersRare, array_get_index(availableModifiersRare, Modifiers.gemSizeMinus25),1);
			}
		}
		//tiny vs giant notes
		if (assignedModifier = Modifiers.gemSizeMinus25){
			if (array_get_index(availableModifiersUncommon, Modifiers.gemSize300) != -1){
				array_delete(availableModifiersUncommon, array_get_index(availableModifiersUncommon, Modifiers.gemSize300),1);
			}
		}
		//funny vs stealth
		if (assignedModifier = Modifiers.funnyHighway){
			if (array_get_index(availableModifiersUncommon, Modifiers.stealthColour) != -1){
				array_delete(availableModifiersUncommon, array_get_index(availableModifiersUncommon, Modifiers.stealthColour),1);
			}
		}
		//stealth vs funny
		if (assignedModifier = Modifiers.stealthColour){
			if (array_get_index(availableModifiersUncommon, Modifiers.funnyHighway) != -1){
				array_delete(availableModifiersUncommon, array_get_index(availableModifiersUncommon, Modifiers.funnyHighway),1);
			}
		}
		//speed changes
		if (assignedModifier = Modifiers.speedIncrease110 
		or assignedModifier = Modifiers.speedIncrease120
		or assignedModifier = Modifiers.speedIncrease130
		or assignedModifier = Modifiers.speedIncrease140
		or assignedModifier = Modifiers.speedIncrease150
		){
			if (array_get_index(availableModifiersXCommon, Modifiers.speedIncrease110) != -1){
				array_delete(availableModifiersXCommon, array_get_index(availableModifiersXCommon, Modifiers.speedIncrease110),1);
			}
			if (array_get_index(availableModifiersCommon, Modifiers.speedIncrease120) != -1){
				array_delete(availableModifiersCommon, array_get_index(availableModifiersCommon, Modifiers.speedIncrease120),1);
			}
			if (array_get_index(availableModifiersUncommon, Modifiers.speedIncrease130) != -1){
				array_delete(availableModifiersUncommon, array_get_index(availableModifiersUncommon, Modifiers.speedIncrease130),1);
			}
			if (array_get_index(availableModifiersRare, Modifiers.speedIncrease140) != -1){
				array_delete(availableModifiersRare, array_get_index(availableModifiersRare, Modifiers.speedIncrease140),1);
			}
			if (array_get_index(availableModifiersSRare, Modifiers.speedIncrease150) != -1){
				array_delete(availableModifiersSRare, array_get_index(availableModifiersSRare, Modifiers.speedIncrease150),1);
			}
		}
		//highway length changes
		if (assignedModifier = Modifiers.highwayLength90 
		or assignedModifier = Modifiers.highwayLength80 
		or assignedModifier = Modifiers.highwayLength60
		){
			if (array_get_index(availableModifiersXCommon, Modifiers.highwayLength90) != -1){
				array_delete(availableModifiersXCommon, array_get_index(availableModifiersXCommon, Modifiers.highwayLength90),1);
			}
			if (array_get_index(availableModifiersUncommon, Modifiers.highwayLength80) != -1){
				array_delete(availableModifiersUncommon, array_get_index(availableModifiersUncommon, Modifiers.highwayLength80),1);
			}
			if (array_get_index(availableModifiersRare, Modifiers.highwayLength60) != -1){
				array_delete(availableModifiersRare, array_get_index(availableModifiersRare, Modifiers.highwayLength60),1);
			}
		}
		//notespeed changes
		if (assignedModifier = Modifiers.fixedNoteSpeed18 
		or assignedModifier = Modifiers.fixedNoteSpeed16
		or assignedModifier = Modifiers.fixedNoteSpeed14
		or assignedModifier = Modifiers.fixedNoteSpeed7
		or assignedModifier = Modifiers.fixedNoteSpeed5
		or assignedModifier = Modifiers.fixedNoteSpeed3
		){
			if (array_get_index(availableModifiersRare, Modifiers.fixedNoteSpeed18) != -1){
				array_delete(availableModifiersRare, array_get_index(availableModifiersRare, Modifiers.fixedNoteSpeed18),1);
			}
			if (array_get_index(availableModifiersUncommon, Modifiers.fixedNoteSpeed16) != -1){
				array_delete(availableModifiersUncommon, array_get_index(availableModifiersUncommon, Modifiers.fixedNoteSpeed16),1);
			}
			if (array_get_index(availableModifiersCommon, Modifiers.fixedNoteSpeed14) != -1){
				array_delete(availableModifiersCommon, array_get_index(availableModifiersCommon, Modifiers.fixedNoteSpeed14),1);
			}
			if (array_get_index(availableModifiersXCommon, Modifiers.fixedNoteSpeed7) != -1){
				array_delete(availableModifiersXCommon, array_get_index(availableModifiersXCommon, Modifiers.fixedNoteSpeed7),1);
			}
			if (array_get_index(availableModifiersUncommon, Modifiers.fixedNoteSpeed5) != -1){
				array_delete(availableModifiersUncommon, array_get_index(availableModifiersUncommon, Modifiers.fixedNoteSpeed5),1);
			}
			if (array_get_index(availableModifiersRare, Modifiers.fixedNoteSpeed3) != -1){
				array_delete(availableModifiersRare, array_get_index(availableModifiersRare, Modifiers.fixedNoteSpeed3),1);
			}
		}
	}
	
	return assignedModifiers;
}