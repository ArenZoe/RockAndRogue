modifiedPrice = price;

for (var i=0;i<array_length(global.jokerInventory);i++)
	{
		switch global.jokerInventory[i]
		{
			case global.jokers.employeeDiscount:{modifiedPrice=max(0,modifiedPrice-1);}break;
			
			case global.jokers.fireSale:{modifiedPrice=ceil(modifiedPrice/2);}break;
			
			case global.jokers.setInStone:{modifiedPrice=2;}break;
		}
	}

draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

draw_roundrect_ext(x,y,x+48,y+48,5,5,false)

draw_set_colour(renderColour & $ffffff);draw_set_alpha(1);

if(array_length(global.itemInventory) >= 3)
{
	draw_set_colour($FF333333 & $ffffff);draw_set_alpha(1);
}

if(modifiedPrice > global.gameMoney)
{
	draw_set_colour($FF333333 & $ffffff);draw_set_alpha(1);
}

draw_roundrect_ext(x+2,y+2,x+46,y+46,5,5,false)

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(f_ssFont);

draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

draw_text(x+24,y+25,string_concat("$",modifiedPrice))