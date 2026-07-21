with(o_resultsTitle) instance_destroy();

with(o_resultsText) instance_destroy();

with(o_resultsStar) instance_destroy();

with(o_continueResultsButton) instance_destroy();

global.gameRound += +1;

global.nextStars += +1;

global.gameMoney += global.playedSongsData[(array_length(global.playedSongsData)-1)].money;

var notif = instance_create_layer(400,125,"StarLayer",o_popupInt);
notif.popupLabel =  global.playedSongsData[(array_length(global.playedSongsData)-1)].money;

global.jokers.wip.count = 0;

instance_create_layer(640, 32, "Instances", o_panelSetlist);

instance_create_layer(304, 160, "Instances", o_panelShop);