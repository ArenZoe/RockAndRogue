function selectSong(roundNumber,setlistIndex,recursiveDepth){
	var bucketTable = [
		[0,1,2],
		[0,1,2],
		[1,2,3],
		[2,3,4],
		[2,3,4],
		[3,4,5],
		[3,4,5],
		[4,5,6],
		[4,5,6],
		[5,6,7],
		[5,6,7],
		[6,7,7],
		[6,7,7],
		[-1,6,7],
		[-1,6,7],
		[-1,6,7],
		[-1,7,7],
		[-1,7,7],
		[-1,-1,7],
		[-1,-1,7],
		[-1,-1,-1],
	];
	
	var bucketNumber = bucketTable[clamp((roundNumber-1),0,array_length(bucketTable)-1),setlistIndex];
	var bucketSongIndexes = [];
	
	for (var i = 0; i< array_length(global.pack.songs); i++){
			if (global.pack.songs[i].bucket = bucketNumber or bucketNumber = -1 or global.pack.songs[i].bucket = -1){
				if (!array_contains(global.seenSongs,i)){
					array_push(bucketSongIndexes,i);
				}
			}
	}
	
	//if no songs are left to pick from, reset seen songs and run the function again
	if (array_length(bucketSongIndexes) = 0){
		global.seenSongs = [];
		
		//add played songs back to seenSongs array
		for (var i = 0; i < array_length(global.playedSongs); i++){
			array_push(global.seenSongs, global.playedSongs[i]);	
		}
		
		//if played songs is all songs, reset both arrays
		if (array_length(global.playedSongs) >= array_length(global.pack.songs)){
			global.seenSongs = [];
			global.playedSongs = [];
		}
		
		//if the recursive depth is less than 3, call normally.
		//if more, call with internal round set to 23 so all buckets are set to -1
		if (recursiveDepth <3){
			return selectSong(roundNumber, setlistIndex, (recursiveDepth +1));
		}
		else
		{
			return selectSong(23, setlistIndex, (recursiveDepth +1))
		}
	}
	
	var selectedSongIndex = bucketSongIndexes[irandom(array_length(bucketSongIndexes)-1)]
	
	array_push(global.seenSongs,selectedSongIndex);
	return selectedSongIndex;
}