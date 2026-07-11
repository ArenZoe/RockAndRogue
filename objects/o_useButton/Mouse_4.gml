show_debug_message(string("USE"));

with(o_consumable)
{
	if(!(inShop))
	{
		if(selected)
		{
			//isActive = !isActive;
			//global.itemsActive[index] = !global.itemsActive[index];
			selected = false;
			itemEval(index);
		}
	}
}

instance_deactivate_object(o_sellButton);

instance_deactivate_object(self);