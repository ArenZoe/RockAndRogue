if(fadeoutCount <= 0)
{
	instance_destroy();
}

else
{
	var labelWithPlus = popupLabel;
	fadeoutCount += -1;

	draw_set_alpha(fadeoutCount / 100);
	draw_set_font(f_ssFontBigger);
	draw_set_colour(c_grey);
	
	if (popupLabel > 0) {
		draw_set_colour(#00ff00);
		labelWithPlus = "+" + string(popupLabel);
	}
	if (popupLabel < 0) {
		draw_set_colour(c_red);
	}
	draw_text(x + 0, y + 0,  + string(labelWithPlus));

	draw_set_alpha(1);
}