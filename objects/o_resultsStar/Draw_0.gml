avgMult = global.playData.players[0].avg_multiplier;
avgMultCurve = lerp(avgMultCurve,avgMult,0.05);
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
if (starsAchieved > 1) {draw_text(375,380,starsAchieved)};

surface_reset_target();
    
// Draw surface to screen
draw_surface(surf, 600, 0);