if(fadeoutCount <= 0)
{
	instance_destroy();
}

else
{
	var fullLabelText = "";
	fadeoutCount += -1;

	draw_set_alpha(fadeoutCount / 100);
	draw_set_font(f_ssFontSmall);
	draw_set_colour(c_grey);
	
	if (popupType = "Plus") {
		if (popupValue > 0) {fullLabelText += "+";draw_set_colour(#00FF00);}
		fullLabelText += string(popupValue) + " Avg. Mult";
		if (popupValue < 0) {draw_set_colour(c_red);}
	}
	if (popupType = "Multi") {
		fullLabelText = "x" + string(popupValue) + " Avg. Mult";
		draw_set_colour(#00FFFF);
	}
	if (popupType = "Star") {
		fullLabelText = "+" + string(popupValue) + " Star";
		if (popupValue > 1){fullLabelText += "s";}
		draw_set_colour(c_yellow);
	}
	if (popupType = "Text"){
		fullLabelText = popupValue;
		draw_set_colour(c_white);
	}
	draw_text(x, y, fullLabelText);

	draw_set_alpha(1);
}