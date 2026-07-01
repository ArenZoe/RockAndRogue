/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 208DD51F
/// @DnDArgument : "var" "showDesc"
/// @DnDArgument : "op" "3"
if(showDesc <= 0){	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 3DFFEF53
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l3DFFEF53_0=($FF000000 >> 24);
	draw_set_alpha(l3DFFEF53_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 023979EE
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "x1" "mouse_x"
	/// @DnDArgument : "y1" "mouse_y"
	/// @DnDArgument : "x2" "mouse_x + 300"
	/// @DnDArgument : "y2" "mouse_y + 132"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(mouse_x, mouse_y, mouse_x + 300, mouse_y + 132, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 239DC939
	/// @DnDParent : 208DD51F
	draw_set_colour($FFFFFFFF & $ffffff);
	var l239DC939_0=($FFFFFFFF >> 24);
	draw_set_alpha(l239DC939_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 54CCEB35
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "x1" "mouse_x + 2"
	/// @DnDArgument : "y1" "mouse_y + 2"
	/// @DnDArgument : "x2" "mouse_x + 298"
	/// @DnDArgument : "y2" "mouse_y + 130"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(mouse_x + 2, mouse_y + 2, mouse_x + 298, mouse_y + 130, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 59E88602
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l59E88602_0=($FF000000 >> 24);
	draw_set_alpha(l59E88602_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Line
	/// @DnDVersion : 1
	/// @DnDHash : 34791DC5
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "x1" "mouse_x + 8"
	/// @DnDArgument : "y1" "mouse_y + 110"
	/// @DnDArgument : "x2" "mouse_x + 292"
	/// @DnDArgument : "y2" "mouse_y + 110"
	draw_line(mouse_x + 8, mouse_y + 110, mouse_x + 292, mouse_y + 110);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 587319DC
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "font" "f_latoBig"
	/// @DnDSaveInfo : "font" "f_latoBig"
	draw_set_font(f_latoBig);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 4145E12C
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 1F5F5971
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "color" "frameColour"
	draw_set_colour(frameColour & $ffffff);
	var l1F5F5971_0=(frameColour >> 24);
	draw_set_alpha(l1F5F5971_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 77A8E44B
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "x" "mouse_x + 150"
	/// @DnDArgument : "y" "mouse_y + 5"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "name"
	draw_text(mouse_x + 150, mouse_y + 5,  + string(name));

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 4BC30F51
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "font" "f_lato"
	/// @DnDSaveInfo : "font" "f_lato"
	draw_set_font(f_lato);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 4D0526FC
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l4D0526FC_0=($FF000000 >> 24);
	draw_set_alpha(l4D0526FC_0 / $ff);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 54C29294
	/// @DnDInput : 5
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "function" "draw_text_ext"
	/// @DnDArgument : "arg" "mouse_x + 150"
	/// @DnDArgument : "arg_1" "mouse_y + 35"
	/// @DnDArgument : "arg_2" "description"
	/// @DnDArgument : "arg_3" "25"
	/// @DnDArgument : "arg_4" "280"
	draw_text_ext(mouse_x + 150, mouse_y + 35, description, 25, 280);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 2A97337A
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "font" "f_latoMini"
	/// @DnDSaveInfo : "font" "f_latoMini"
	draw_set_font(f_latoMini);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 35E26AE7
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "halign" "fa_right"
	draw_set_halign(fa_right);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 606D4194
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "x" "mouse_x + 292"
	/// @DnDArgument : "y" "mouse_y + 112"
	/// @DnDArgument : "caption" ""$""
	/// @DnDArgument : "var" "sellValue"
	draw_text(mouse_x + 292, mouse_y + 112, string("$") + string(sellValue));

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 284BF3A9
	/// @DnDParent : 208DD51F
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 0C289754
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "expr" "rarity"
	var l0C289754_0 = rarity;switch(l0C289754_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1137A5BD
		/// @DnDParent : 0C289754
		case 0:	/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 0E664037
			/// @DnDParent : 1137A5BD
			/// @DnDArgument : "color" "$FF000000"
			draw_set_colour($FF000000 & $ffffff);
			var l0E664037_0=($FF000000 >> 24);
			draw_set_alpha(l0E664037_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 0E8169B8
			/// @DnDParent : 1137A5BD
			/// @DnDArgument : "x" "mouse_x + 8"
			/// @DnDArgument : "y" "mouse_y + 112"
			/// @DnDArgument : "caption" ""Common""
			draw_text(mouse_x + 8, mouse_y + 112, string("Common") + "");	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 28C3DFD2
		/// @DnDParent : 0C289754
		/// @DnDArgument : "const" "1"
		case 1:	/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 1D69CDFA
			/// @DnDParent : 28C3DFD2
			/// @DnDArgument : "color" "$FF333333"
			draw_set_colour($FF333333 & $ffffff);
			var l1D69CDFA_0=($FF333333 >> 24);
			draw_set_alpha(l1D69CDFA_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 65E4A6FA
			/// @DnDParent : 28C3DFD2
			/// @DnDArgument : "x" "mouse_x + 8"
			/// @DnDArgument : "y" "mouse_y + 112"
			/// @DnDArgument : "caption" ""Uncommon""
			draw_text(mouse_x + 8, mouse_y + 112, string("Uncommon") + "");	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4E6BA28F
		/// @DnDParent : 0C289754
		/// @DnDArgument : "const" "2"
		case 2:	/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 18714D06
			/// @DnDParent : 4E6BA28F
			/// @DnDArgument : "color" "$FF003D66"
			draw_set_colour($FF003D66 & $ffffff);
			var l18714D06_0=($FF003D66 >> 24);
			draw_set_alpha(l18714D06_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 6C708143
			/// @DnDParent : 4E6BA28F
			/// @DnDArgument : "x" "mouse_x + 8"
			/// @DnDArgument : "y" "mouse_y + 112"
			/// @DnDArgument : "caption" ""Rare""
			draw_text(mouse_x + 8, mouse_y + 112, string("Rare") + "");	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 75FE1BA1
		/// @DnDParent : 0C289754
		/// @DnDArgument : "const" "3"
		case 3:	/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 28CA6FBC
			/// @DnDParent : 75FE1BA1
			/// @DnDArgument : "color" "$FF5F267F"
			draw_set_colour($FF5F267F & $ffffff);
			var l28CA6FBC_0=($FF5F267F >> 24);
			draw_set_alpha(l28CA6FBC_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 4B1C1961
			/// @DnDParent : 75FE1BA1
			/// @DnDArgument : "x" "mouse_x + 8"
			/// @DnDArgument : "y" "mouse_y + 112"
			/// @DnDArgument : "caption" ""Epic""
			draw_text(mouse_x + 8, mouse_y + 112, string("Epic") + "");	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 23CE21FC
		/// @DnDParent : 0C289754
		/// @DnDArgument : "const" "4"
		case 4:	/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 7EFEDFE4
			/// @DnDParent : 23CE21FC
			/// @DnDArgument : "color" "$FF0C0F7F"
			draw_set_colour($FF0C0F7F & $ffffff);
			var l7EFEDFE4_0=($FF0C0F7F >> 24);
			draw_set_alpha(l7EFEDFE4_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 5D7E0EB7
			/// @DnDParent : 23CE21FC
			/// @DnDArgument : "x" "mouse_x + 8"
			/// @DnDArgument : "y" "mouse_y + 112"
			/// @DnDArgument : "caption" ""Legendary""
			draw_text(mouse_x + 8, mouse_y + 112, string("Legendary") + "");	break;}

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 63A89874
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l63A89874_0=($FF000000 >> 24);
	draw_set_alpha(l63A89874_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 570FEE0E
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 1E6B03B8
	/// @DnDParent : 208DD51F
	/// @DnDArgument : "expr" "type"
	var l1E6B03B8_0 = type;switch(l1E6B03B8_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 02526496
		/// @DnDParent : 1E6B03B8
		/// @DnDArgument : "const" "jType.linearScaler"
		case jType.linearScaler:	/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 184FD092
			/// @DnDParent : 02526496
			/// @DnDArgument : "color" "frameColour"
			draw_set_colour(frameColour & $ffffff);
			var l184FD092_0=(frameColour >> 24);
			draw_set_alpha(l184FD092_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 42B52783
			/// @DnDParent : 02526496
			/// @DnDArgument : "x" "mouse_x + 150"
			/// @DnDArgument : "y" "mouse_y + 112"
			/// @DnDArgument : "caption" ""Linear Scaler""
			draw_text(mouse_x + 150, mouse_y + 112, string("Linear Scaler") + "");	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 3AF34DC2
		/// @DnDParent : 1E6B03B8
		/// @DnDArgument : "const" "jType.growing"
		case jType.growing:	/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 78B2B609
			/// @DnDParent : 3AF34DC2
			/// @DnDArgument : "color" "frameColour"
			draw_set_colour(frameColour & $ffffff);
			var l78B2B609_0=(frameColour >> 24);
			draw_set_alpha(l78B2B609_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 6440A75C
			/// @DnDParent : 3AF34DC2
			/// @DnDArgument : "x" "mouse_x + 150"
			/// @DnDArgument : "y" "mouse_y + 112"
			/// @DnDArgument : "caption" ""Growing""
			draw_text(mouse_x + 150, mouse_y + 112, string("Growing") + "");	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 395872D3
		/// @DnDParent : 1E6B03B8
		/// @DnDArgument : "const" "jType.decaying"
		case jType.decaying:	/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 2E83CE22
			/// @DnDParent : 395872D3
			/// @DnDArgument : "color" "frameColour"
			draw_set_colour(frameColour & $ffffff);
			var l2E83CE22_0=(frameColour >> 24);
			draw_set_alpha(l2E83CE22_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 6EE19759
			/// @DnDParent : 395872D3
			/// @DnDArgument : "x" "mouse_x + 150"
			/// @DnDArgument : "y" "mouse_y + 112"
			/// @DnDArgument : "caption" ""Decaying""
			draw_text(mouse_x + 150, mouse_y + 112, string("Decaying") + "");	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 26D0B584
		/// @DnDParent : 1E6B03B8
		/// @DnDArgument : "const" "jType.flatBig"
		case jType.flatBig:	/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 166A5A71
			/// @DnDParent : 26D0B584
			/// @DnDArgument : "color" "frameColour"
			draw_set_colour(frameColour & $ffffff);
			var l166A5A71_0=(frameColour >> 24);
			draw_set_alpha(l166A5A71_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 1291779D
			/// @DnDParent : 26D0B584
			/// @DnDArgument : "x" "mouse_x + 150"
			/// @DnDArgument : "y" "mouse_y + 112"
			/// @DnDArgument : "caption" ""Flat - Powerful""
			draw_text(mouse_x + 150, mouse_y + 112, string("Flat - Powerful") + "");	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 094BC3D9
		/// @DnDParent : 1E6B03B8
		/// @DnDArgument : "const" "jType.flatSmall"
		case jType.flatSmall:	/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 4CD08C95
			/// @DnDParent : 094BC3D9
			/// @DnDArgument : "color" "frameColour"
			draw_set_colour(frameColour & $ffffff);
			var l4CD08C95_0=(frameColour >> 24);
			draw_set_alpha(l4CD08C95_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 6189493E
			/// @DnDParent : 094BC3D9
			/// @DnDArgument : "x" "mouse_x + 150"
			/// @DnDArgument : "y" "mouse_y + 112"
			/// @DnDArgument : "caption" ""Flat - Weak""
			draw_text(mouse_x + 150, mouse_y + 112, string("Flat - Weak") + "");	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4D7E8736
		/// @DnDParent : 1E6B03B8
		/// @DnDArgument : "const" "jType.passive"
		case jType.passive:	/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 00605849
			/// @DnDParent : 4D7E8736
			/// @DnDArgument : "color" "frameColour"
			draw_set_colour(frameColour & $ffffff);
			var l00605849_0=(frameColour >> 24);
			draw_set_alpha(l00605849_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 2BB8705E
			/// @DnDParent : 4D7E8736
			/// @DnDArgument : "x" "mouse_x + 150"
			/// @DnDArgument : "y" "mouse_y + 112"
			/// @DnDArgument : "caption" ""Passive""
			draw_text(mouse_x + 150, mouse_y + 112, string("Passive") + "");	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 3C21B0B7
		/// @DnDParent : 1E6B03B8
		/// @DnDArgument : "const" "jType.duplicator"
		case jType.duplicator:	/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 5DFC1D08
			/// @DnDParent : 3C21B0B7
			/// @DnDArgument : "color" "frameColour"
			draw_set_colour(frameColour & $ffffff);
			var l5DFC1D08_0=(frameColour >> 24);
			draw_set_alpha(l5DFC1D08_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 562467B7
			/// @DnDParent : 3C21B0B7
			/// @DnDArgument : "x" "mouse_x + 150"
			/// @DnDArgument : "y" "mouse_y + 112"
			/// @DnDArgument : "caption" ""Duplicator""
			draw_text(mouse_x + 150, mouse_y + 112, string("Duplicator") + "");	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 00737E1E
		/// @DnDParent : 1E6B03B8
		/// @DnDArgument : "const" "jType.statChanger"
		case jType.statChanger:	/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 41066FD6
			/// @DnDParent : 00737E1E
			/// @DnDArgument : "color" "frameColour"
			draw_set_colour(frameColour & $ffffff);
			var l41066FD6_0=(frameColour >> 24);
			draw_set_alpha(l41066FD6_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 028AC672
			/// @DnDParent : 00737E1E
			/// @DnDArgument : "x" "mouse_x + 150"
			/// @DnDArgument : "y" "mouse_y + 112"
			/// @DnDArgument : "caption" ""Stat Changer""
			draw_text(mouse_x + 150, mouse_y + 112, string("Stat Changer") + "");	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 5BD5BD2A
		/// @DnDParent : 1E6B03B8
		/// @DnDArgument : "const" "jType.synergizer"
		case jType.synergizer:	/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 3CB66ED4
			/// @DnDParent : 5BD5BD2A
			/// @DnDArgument : "color" "frameColour"
			draw_set_colour(frameColour & $ffffff);
			var l3CB66ED4_0=(frameColour >> 24);
			draw_set_alpha(l3CB66ED4_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 3D476E15
			/// @DnDParent : 5BD5BD2A
			/// @DnDArgument : "x" "mouse_x + 150"
			/// @DnDArgument : "y" "mouse_y + 112"
			/// @DnDArgument : "caption" ""Synergizer""
			draw_text(mouse_x + 150, mouse_y + 112, string("Synergizer") + "");	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1EB8046F
		/// @DnDParent : 1E6B03B8
		/// @DnDArgument : "const" "jType.economic"
		case jType.economic:	/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 1CBB0B64
			/// @DnDParent : 1EB8046F
			/// @DnDArgument : "color" "frameColour"
			draw_set_colour(frameColour & $ffffff);
			var l1CBB0B64_0=(frameColour >> 24);
			draw_set_alpha(l1CBB0B64_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 682CFE2B
			/// @DnDParent : 1EB8046F
			/// @DnDArgument : "x" "mouse_x + 150"
			/// @DnDArgument : "y" "mouse_y + 112"
			/// @DnDArgument : "caption" ""Economic""
			draw_text(mouse_x + 150, mouse_y + 112, string("Economic") + "");	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2AEDDDBB
		/// @DnDParent : 1E6B03B8
		/// @DnDArgument : "const" "jType.toggle"
		case jType.toggle:	/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 1E0464CE
			/// @DnDParent : 2AEDDDBB
			/// @DnDArgument : "color" "frameColour"
			draw_set_colour(frameColour & $ffffff);
			var l1E0464CE_0=(frameColour >> 24);
			draw_set_alpha(l1E0464CE_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 2254B6CE
			/// @DnDParent : 2AEDDDBB
			/// @DnDArgument : "x" "mouse_x + 150"
			/// @DnDArgument : "y" "mouse_y + 112"
			/// @DnDArgument : "caption" ""Toggle""
			draw_text(mouse_x + 150, mouse_y + 112, string("Toggle") + "");	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2B099DD5
		/// @DnDParent : 1E6B03B8
		/// @DnDArgument : "const" "jType.special"
		case jType.special:	/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 58FED414
			/// @DnDParent : 2B099DD5
			/// @DnDArgument : "color" "frameColour"
			draw_set_colour(frameColour & $ffffff);
			var l58FED414_0=(frameColour >> 24);
			draw_set_alpha(l58FED414_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 651CB923
			/// @DnDParent : 2B099DD5
			/// @DnDArgument : "x" "mouse_x + 150"
			/// @DnDArgument : "y" "mouse_y + 112"
			/// @DnDArgument : "caption" ""Special""
			draw_text(mouse_x + 150, mouse_y + 112, string("Special") + "");	break;
	
		/// @DnDAction : YoYo Games.Switch.Default
		/// @DnDVersion : 1
		/// @DnDHash : 067F491D
		/// @DnDParent : 1E6B03B8
		default:	/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 18B0CDF0
			/// @DnDParent : 067F491D
			/// @DnDArgument : "color" "frameColour"
			draw_set_colour(frameColour & $ffffff);
			var l18B0CDF0_0=(frameColour >> 24);
			draw_set_alpha(l18B0CDF0_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 18B9020C
			/// @DnDParent : 067F491D
			/// @DnDArgument : "x" "mouse_x + 150"
			/// @DnDArgument : "y" "mouse_y + 112"
			/// @DnDArgument : "caption" ""Undefined""
			draw_text(mouse_x + 150, mouse_y + 112, string("Undefined") + "");	break;}}