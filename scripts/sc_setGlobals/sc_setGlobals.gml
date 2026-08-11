function setGlobals() 
{
	global.gameMoney = global.pack.startingMoney;
	
	if debug_mode {global.gameMoney = 999999;}

	global.gameRound = 1;

	global.nextStars = 5;

	global.shopRefreshCostDefault = 5;
	global.setlistRefreshCostDefault = 5;
	
	if debug_mode {global.shopRefreshCostDefault = 0;global.setlistRefreshCostDefault = 0;}
	
	global.shopRefreshCost = global.shopRefreshCostDefault;
	global.setlistRefreshCost = global.setlistRefreshCostDefault;

	global.jokerInventory = [];
	global.itemInventory = [];
	global.itemsActive = [false,false,false,false];

	global.seenSongs = [];
	global.playedSongs = [];

	global.shopInventory = [];
	global.shopInventoryItems = [];

	global.playedSongsData = [];
	global.playData = [];
	global.playDataBase = [];
	
	global.scorePath = (environment_get_variable("userprofile")) + "\\Documents\\Clone Hero\\scorestats.json";
	
	//stat trackers
	global.runStats = {
	songsPlayed:0,
	setlistRerolls:0,
	shopRerolls:0,
	itemsPurchased:0,
	itemsSold:0,
	consumablesUsed:0,
	
	scoreTotal:0,
	baseStarsEarned:0,
	modifiedStarsEarned:0,
	notesHit:0,
	notesMissed:0,
	bestStreak:0,
	overstrums:0,
	spPhrases:0,
	spActivations:0,
	timeInSP:0,
	fretsGhosted:0,
	notesSqueezed:0,
	baseFCs:0,
	modifiedFCs:0
	}
	
	
	
}