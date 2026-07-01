/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4AD03C79
/// @DnDArgument : "var" "selected"
/// @DnDArgument : "value" "true"
if(selected == true){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 68DE93F5
	/// @DnDParent : 4AD03C79
	/// @DnDArgument : "expr" "1.1"
	/// @DnDArgument : "var" "self.image_xscale"
	self.image_xscale = 1.1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 251413EA
	/// @DnDParent : 4AD03C79
	/// @DnDArgument : "expr" "1.1"
	/// @DnDArgument : "var" "self.image_yscale"
	self.image_yscale = 1.1;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4D79CBF4
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F1DC9E2
	/// @DnDParent : 4D79CBF4
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "self.image_xscale"
	self.image_xscale = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 515D27FE
	/// @DnDParent : 4D79CBF4
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "self.image_yscale"
	self.image_yscale = 1;}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 3699DF1F
/// @DnDDisabled : 1


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6EDCCC73
/// @DnDArgument : "var" "type"
/// @DnDArgument : "value" "jType.toggle"
if(type == jType.toggle){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6EC05568
	/// @DnDParent : 6EDCCC73
	/// @DnDArgument : "var" "count"
	if(count == 0){	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
		/// @DnDVersion : 1
		/// @DnDHash : 45BF69EE
		/// @DnDParent : 6EC05568
		/// @DnDArgument : "alpha" "0.115"
		draw_set_alpha(0.115);}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 68CD43B4
else{	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 6CB59C7F
	/// @DnDParent : 68CD43B4
	draw_set_alpha(1);}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5E42C305
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "0"
/// @DnDArgument : "yscale_relative" "1"
/// @DnDArgument : "alpha" "draw_get_alpha()"
/// @DnDArgument : "sprite" "sprite_index"
draw_sprite_ext(sprite_index, 0, x + 0, y + 0, image_xscale + 0, image_yscale + 0, 0, $FFFFFF & $ffffff, draw_get_alpha());

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 7D635309
/// @DnDArgument : "expr" "type"
var l7D635309_0 = type;switch(l7D635309_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7FB8649C
	/// @DnDParent : 7D635309
	/// @DnDArgument : "const" "jType.linearScaler"
	case jType.linearScaler:	/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 7585EFD7
		/// @DnDDisabled : 1
		/// @DnDParent : 7FB8649C
		/// @DnDArgument : "color" "$FF493820"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4AF81818
		/// @DnDParent : 7FB8649C
		/// @DnDArgument : "expr" "$FF493820"
		/// @DnDArgument : "var" "frameColour"
		frameColour = $FF493820;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 319CBAEC
	/// @DnDParent : 7D635309
	/// @DnDArgument : "const" "jType.growing"
	case jType.growing:	/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 7E685833
		/// @DnDDisabled : 1
		/// @DnDParent : 319CBAEC
		/// @DnDArgument : "color" "$FF512A6D"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4DA50709
		/// @DnDParent : 319CBAEC
		/// @DnDArgument : "expr" "$FF512A6D"
		/// @DnDArgument : "var" "frameColour"
		frameColour = $FF512A6D;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6DD837FC
	/// @DnDParent : 7D635309
	/// @DnDArgument : "const" "jType.decaying"
	case jType.decaying:	/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 007692AF
		/// @DnDDisabled : 1
		/// @DnDParent : 6DD837FC
		/// @DnDArgument : "color" "$FF0000A5"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5D177B97
		/// @DnDParent : 6DD837FC
		/// @DnDArgument : "expr" "$FF0000A5"
		/// @DnDArgument : "var" "frameColour"
		frameColour = $FF0000A5;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 42167268
	/// @DnDParent : 7D635309
	/// @DnDArgument : "const" "jType.flatBig"
	case jType.flatBig:	/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 77C0A2D8
		/// @DnDDisabled : 1
		/// @DnDParent : 42167268
		/// @DnDArgument : "color" "$FF7F7F7F"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 790DB46F
		/// @DnDParent : 42167268
		/// @DnDArgument : "expr" "$FF7F7F7F"
		/// @DnDArgument : "var" "frameColour"
		frameColour = $FF7F7F7F;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 79774AAE
	/// @DnDParent : 7D635309
	/// @DnDArgument : "const" "jType.flatSmall"
	case jType.flatSmall:	/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 6613A82C
		/// @DnDDisabled : 1
		/// @DnDParent : 79774AAE
		/// @DnDArgument : "color" "$FF4C4C4C"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 52EBA13F
		/// @DnDParent : 79774AAE
		/// @DnDArgument : "expr" "$FF4C4C4C"
		/// @DnDArgument : "var" "frameColour"
		frameColour = $FF4C4C4C;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 47F663C3
	/// @DnDParent : 7D635309
	/// @DnDArgument : "const" "jType.passive"
	case jType.passive:	/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 38B44552
		/// @DnDDisabled : 1
		/// @DnDParent : 47F663C3
		/// @DnDArgument : "color" "$FFCC641A"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 30B05AC7
		/// @DnDParent : 47F663C3
		/// @DnDArgument : "expr" "$FFCC641A"
		/// @DnDArgument : "var" "frameColour"
		frameColour = $FFCC641A;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 43D449F8
	/// @DnDParent : 7D635309
	/// @DnDArgument : "const" "jType.duplicator"
	case jType.duplicator:	/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 580B44C0
		/// @DnDDisabled : 1
		/// @DnDParent : 43D449F8
		/// @DnDArgument : "color" "$FF0D9935"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 62FEA301
		/// @DnDParent : 43D449F8
		/// @DnDArgument : "expr" "$FF0D9935"
		/// @DnDArgument : "var" "frameColour"
		frameColour = $FF0D9935;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 12B2639E
	/// @DnDParent : 7D635309
	/// @DnDArgument : "const" "jType.statChanger"
	case jType.statChanger:	/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 7668BB17
		/// @DnDDisabled : 1
		/// @DnDParent : 12B2639E
		/// @DnDArgument : "color" "$FF6EB247"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0E496782
		/// @DnDParent : 12B2639E
		/// @DnDArgument : "expr" "$FF6EB247"
		/// @DnDArgument : "var" "frameColour"
		frameColour = $FF6EB247;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6487B4B4
	/// @DnDParent : 7D635309
	/// @DnDArgument : "const" "jType.synergizer"
	case jType.synergizer:	/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 035743AB
		/// @DnDDisabled : 1
		/// @DnDParent : 6487B4B4
		/// @DnDArgument : "color" "$FF0F5D99"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17F9EACB
		/// @DnDParent : 6487B4B4
		/// @DnDArgument : "expr" "$FF0F5D99"
		/// @DnDArgument : "var" "frameColour"
		frameColour = $FF0F5D99;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 76DFAAEB
	/// @DnDParent : 7D635309
	/// @DnDArgument : "const" "jType.economic"
	case jType.economic:	/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 222A374B
		/// @DnDDisabled : 1
		/// @DnDParent : 76DFAAEB
		/// @DnDArgument : "color" "$FF11A3E5"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 563802A4
		/// @DnDParent : 76DFAAEB
		/// @DnDArgument : "expr" "$FF11A3E5"
		/// @DnDArgument : "var" "frameColour"
		frameColour = $FF11A3E5;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 474F7CB9
	/// @DnDParent : 7D635309
	/// @DnDArgument : "const" "jType.toggle"
	case jType.toggle:	/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 508CD4B0
		/// @DnDDisabled : 1
		/// @DnDParent : 474F7CB9
		/// @DnDArgument : "color" "$FF552D99"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1E7EB671
		/// @DnDParent : 474F7CB9
		/// @DnDArgument : "expr" "$FF552D99"
		/// @DnDArgument : "var" "frameColour"
		frameColour = $FF552D99;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 14BB163A
	/// @DnDParent : 7D635309
	/// @DnDArgument : "const" "jType.special"
	case jType.special:	/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 3FF64D5C
		/// @DnDDisabled : 1
		/// @DnDParent : 14BB163A
		/// @DnDArgument : "color" "$FF2D084C"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 44463C44
		/// @DnDParent : 14BB163A
		/// @DnDArgument : "expr" "$FF2D084C"
		/// @DnDArgument : "var" "frameColour"
		frameColour = $FF2D084C;	break;

	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 3365BC0A
	/// @DnDParent : 7D635309
	default:	/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 3E72C696
		/// @DnDParent : 3365BC0A
		/// @DnDArgument : "color" "$FFFAFF00"
		/// @DnDArgument : "alpha" "false"
		draw_set_colour($FFFAFF00 & $ffffff);draw_set_alpha(1);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4DE4162F
		/// @DnDParent : 3365BC0A
		/// @DnDArgument : "expr" "$FFFAFF00"
		/// @DnDArgument : "var" "frameColour"
		frameColour = $FFFAFF00;	break;}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 40E13C81
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "0"
/// @DnDArgument : "yscale_relative" "1"
/// @DnDArgument : "alpha" "draw_get_alpha()"
/// @DnDArgument : "sprite" "sp_frameCommon"
/// @DnDArgument : "col" "frameColour"
/// @DnDSaveInfo : "sprite" "sp_frameCommon"
draw_sprite_ext(sp_frameCommon, 0, x + 0, y + 0, image_xscale + 0, image_yscale + 0, 0, frameColour & $ffffff, draw_get_alpha());

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5876A01E
/// @DnDArgument : "expr" "rarity"
var l5876A01E_0 = rarity;switch(l5876A01E_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 66999A28
	/// @DnDParent : 5876A01E
	/// @DnDArgument : "const" "1"
	case 1:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 0AD2F0E5
		/// @DnDParent : 66999A28
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "0"
		/// @DnDArgument : "xscale_relative" "1"
		/// @DnDArgument : "yscale" "0"
		/// @DnDArgument : "yscale_relative" "1"
		/// @DnDArgument : "alpha" "draw_get_alpha()"
		/// @DnDArgument : "sprite" "sp_frameUncommon"
		/// @DnDArgument : "col" "frameColour"
		/// @DnDSaveInfo : "sprite" "sp_frameUncommon"
		draw_sprite_ext(sp_frameUncommon, 0, x + 0, y + 0, image_xscale + 0, image_yscale + 0, 0, frameColour & $ffffff, draw_get_alpha());	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 714E611B
	/// @DnDParent : 5876A01E
	/// @DnDArgument : "const" "2"
	case 2:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 1A13DE23
		/// @DnDParent : 714E611B
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "0"
		/// @DnDArgument : "xscale_relative" "1"
		/// @DnDArgument : "yscale" "0"
		/// @DnDArgument : "yscale_relative" "1"
		/// @DnDArgument : "alpha" "draw_get_alpha()"
		/// @DnDArgument : "sprite" "sp_frameRare"
		/// @DnDArgument : "col" "frameColour"
		/// @DnDSaveInfo : "sprite" "sp_frameRare"
		draw_sprite_ext(sp_frameRare, 0, x + 0, y + 0, image_xscale + 0, image_yscale + 0, 0, frameColour & $ffffff, draw_get_alpha());	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2764EBC2
	/// @DnDParent : 5876A01E
	/// @DnDArgument : "const" "3"
	case 3:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 503074D0
		/// @DnDParent : 2764EBC2
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "0"
		/// @DnDArgument : "xscale_relative" "1"
		/// @DnDArgument : "yscale" "0"
		/// @DnDArgument : "yscale_relative" "1"
		/// @DnDArgument : "alpha" "draw_get_alpha()"
		/// @DnDArgument : "sprite" "sp_frameEpic"
		/// @DnDArgument : "col" "frameColour"
		/// @DnDSaveInfo : "sprite" "sp_frameEpic"
		draw_sprite_ext(sp_frameEpic, 0, x + 0, y + 0, image_xscale + 0, image_yscale + 0, 0, frameColour & $ffffff, draw_get_alpha());	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6DC2DD89
	/// @DnDParent : 5876A01E
	/// @DnDArgument : "const" "4"
	case 4:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 38501297
		/// @DnDParent : 6DC2DD89
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "0"
		/// @DnDArgument : "xscale_relative" "1"
		/// @DnDArgument : "yscale" "0"
		/// @DnDArgument : "yscale_relative" "1"
		/// @DnDArgument : "alpha" "draw_get_alpha()"
		/// @DnDArgument : "sprite" "sp_frameLegendary"
		/// @DnDArgument : "col" "frameColour"
		/// @DnDSaveInfo : "sprite" "sp_frameLegendary"
		draw_sprite_ext(sp_frameLegendary, 0, x + 0, y + 0, image_xscale + 0, image_yscale + 0, 0, frameColour & $ffffff, draw_get_alpha());	break;}

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 48C14544
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l48C14544_0=($FF000000 >> 24);
draw_set_alpha(l48C14544_0 / $ff);