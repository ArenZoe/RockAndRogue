/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 11D3A4C4
/// @DnDArgument : "code" "function selectSong(roundNumber,setlistIndex){$(13_10)	var bucketTable = [$(13_10)		[0,0,1],$(13_10)		[0,1,2],$(13_10)		[0,1,2],$(13_10)		[1,2,3],$(13_10)		[1,2,3],$(13_10)		[2,3,4],$(13_10)		[2,3,4],$(13_10)		[3,4,5],$(13_10)		[3,4,5],$(13_10)		[4,5,6],$(13_10)		[4,5,6],$(13_10)		[5,6,6],$(13_10)		[5,6,7],$(13_10)		[6,6,7],$(13_10)		[6,6,7],$(13_10)		[6,7,7],$(13_10)		[6,7,7],$(13_10)		[7,7,7],$(13_10)		[7,7,7],$(13_10)		[7,7,7],$(13_10)		[-1,-1,-1],$(13_10)	];$(13_10)	$(13_10)	var bucketNumber = bucketTable[clamp((roundNumber-1),0,array_length(bucketTable)-1),setlistIndex];$(13_10)	var bucketSongIndexes = [];$(13_10)	$(13_10)	for (var i = 0; i< array_length(global.pack.songs); i++){$(13_10)			if (global.pack.songs[i].bucket = bucketNumber or bucketNumber = -1 or global.pack.songs[i].bucket = -1){$(13_10)				if (!array_contains(global.seenSongs,i)){$(13_10)					array_push(bucketSongIndexes,i);$(13_10)				}$(13_10)			}$(13_10)	}$(13_10)	$(13_10)	//if no songs are left to pick from, reset seen songs and run the function again$(13_10)	if (array_length(bucketSongIndexes) = 0){$(13_10)		global.seenSongs = [];$(13_10)		$(13_10)		//add played songs back to seenSongs array$(13_10)		for (var i = 0; i < array_length(global.playedSongs); i++){$(13_10)			array_push(global.seenSongs, global.playedSongs[i]);	$(13_10)		}$(13_10)		$(13_10)		//if played songs is all songs, reset both arrays$(13_10)		if (array_length(global.playedSongs) >= array_length(global.pack.songs)){$(13_10)			global.seenSongs = [];$(13_10)			global.playedSongs = [];$(13_10)		}$(13_10)		$(13_10)		return selectSong(roundNumber, setlistIndex);$(13_10)	}$(13_10)	$(13_10)	var selectedSongIndex = bucketSongIndexes[irandom(array_length(bucketSongIndexes)-1)]$(13_10)	$(13_10)	array_push(global.seenSongs,selectedSongIndex);$(13_10)	return selectedSongIndex;$(13_10)}$(13_10)$(13_10)$(13_10)"
function selectSong(roundNumber,setlistIndex){
	var bucketTable = [
		[0,0,1],
		[0,1,2],
		[0,1,2],
		[1,2,3],
		[1,2,3],
		[2,3,4],
		[2,3,4],
		[3,4,5],
		[3,4,5],
		[4,5,6],
		[4,5,6],
		[5,6,6],
		[5,6,7],
		[6,6,7],
		[6,6,7],
		[6,7,7],
		[6,7,7],
		[7,7,7],
		[7,7,7],
		[7,7,7],
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
		
		return selectSong(roundNumber, setlistIndex);
	}
	
	var selectedSongIndex = bucketSongIndexes[irandom(array_length(bucketSongIndexes)-1)]
	
	array_push(global.seenSongs,selectedSongIndex);
	return selectedSongIndex;
}