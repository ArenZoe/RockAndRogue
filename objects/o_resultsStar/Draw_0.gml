avgMult = global.playData.players[0].avg_multiplier;

//make the curved avg mult value "zoop" up to the real value instead of instantly jumping

if (avgMultCurve < 0.999*avgMult)
{
	avgMultCurve = lerp(avgMultCurve,avgMult,(0.05 * animSpeedScale));
}
//speed up the zoop when it's almost done
if (avgMultCurve >= 0.999*avgMult)
{
	avgMultCurve = lerp(avgMultCurve,avgMult,(0.2 * animSpeedScale));
}
starCount = sqrt(avgMultCurve)*3.337;
starsAchieved = floor(starCount);
progressOffset = power((starsAchieved) / 3.337,2);
multToNextStar = power((starsAchieved+1) / 3.337,2);

//drawing the stars on their own surface so the blend mode doesn't affect the BG
if (!surface_exists(surf))
{
    surf = surface_create(750, 750);
}

surface_set_target(surf);

draw_sprite_ext(sp_starBigGlow,0,375,375,0.75,0.75,0,c_white,1);
gpu_set_blendmode(bm_eq_subtract);
draw_pie(375,375,(multToNextStar-avgMultCurve),multToNextStar-progressOffset,c_white,500,1);
gpu_set_blendmode(bm_normal);
draw_sprite_ext(sp_starBigBase,0,375,375,0.75,0.75,0,c_white,1);
draw_set_colour(c_yellow);
draw_set_font(f_ssFontGiant);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//show the star count in red when it's not enough to get to the next level
if (starsAchieved < global.nextStars) {draw_set_colour(c_red);} 
if (starsAchieved > 1) {draw_text(375,380,starsAchieved);}

surface_reset_target();
    
// Draw surface to screen
draw_surface(surf, 600, 0);

//if there is a joker being evaluated, draw the glow sprite
if jokerCheck >0 
	{
	draw_sprite(sp_jokerGlow,0,48,154+(64*jokerCheck));
	}

//check if there are jokers to evaluate, and if so, evaluate the next one
if (avgMultCurve = avgMult and jokerCheck != -1)
{
	
	if (array_length(global.jokerInventory) > jokerCheck)
	{
		jokerCheck +=1;
		show_debug_message("Checking joker " + string(jokerCheck));

		jokerEval(jokerCheck-1);
	}
	//when the jokers are done evaluating, prevent more checks and spawn the continue / end button
	else
	{
		show_debug_message("done checking jokers!");
		jokerCheck = -1;
		global.playData.players[0].stars = starsAchieved;
		starCalculation();
	}
	

}