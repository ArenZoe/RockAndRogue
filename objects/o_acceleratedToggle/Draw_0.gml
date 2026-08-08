draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

draw_roundrect_ext(x,y,x+40,y+40,5,5,false)

draw_set_colour(renderColour & $ffffff);draw_set_alpha(1);

draw_roundrect_ext(x+2,y+2,x+38,y+38,5,5,false)

draw_set_font(f_lato);
draw_set_colour(c_black)
draw_text(x+48,y+8,"Accelerated Mode");

if global.acceleratedMode {draw_sprite_ext(sp_check, 0, x-5, y-5, .8, .8, 0, $FF000000 & $ffffff, 1);}