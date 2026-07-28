modifiedSetlistRefreshCost = global.setlistRefreshCost;
for (var i=0;i<array_length(global.jokerInventory);i++)
	{
		switch global.jokerInventory[i]
		{
			case global.jokers.wip:
			{
				if (global.jokers.wip.count = 0)
				{
					modifiedSetlistRefreshCost *= 0;
				}
			}
			break;
			
			case global.jokers.crowd:{modifiedSetlistRefreshCost*=2;}break;
			
			case global.jokers.setInStone:{modifiedSetlistRefreshCost = 9999;}break;
		}
	}



draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

draw_roundrect_ext(x,y,x+128,y+64,5,5,false)

draw_set_colour(renderColour & $ffffff);draw_set_alpha(1);

if(modifiedSetlistRefreshCost > global.gameMoney)
{
	draw_set_colour(#333333);
}

draw_roundrect_ext(x+2,y+2,x+126,y+62,5,5,false)

draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_set_font(f_ssFont);

draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

draw_text_ext(x+64,y+4,string_concat("Setlist Refresh: $",modifiedSetlistRefreshCost),20,58);