

show_debug_message("give all jokers");
var allJokers = struct_get_names(global.jokers)
var i=0;
for (i=0;i<array_length(allJokers);i++){
	array_push(global.jokerInventory,global.jokers[$ allJokers[i]]);	
}
with(o_InventoryPanel){event_user(1);}