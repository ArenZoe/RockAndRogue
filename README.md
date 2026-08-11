# Rock & Rogue
<sup>A Balatro-inspired way to play Clone Hero!

<sub><sub>A passion project started by Aren and Geo in 2024

### What this project is *not*:
- A mod for Clone Hero
- A professionally made, well-balanced game
- A full standalone experience that will win GOTY

### What this project *is*:
- A separate program to "play" beside Clone Hero
- A fun little project that isn't meant to be serious
- A barebones prototype / proof-of-concept

# Requirements
- Clone Hero v1.1 or later
- This set of highways and colour profiles in your game's custom data folder. [RockAndRogueCustom.zip](https://github.com/user-attachments/files/30100637/RockAndRogueCustom.zip)
- [Download the latest release](https://github.com/ArenZoe/RockAndRogue/releases/latest)



# How to Play
- Each pack has its own set of songs. If you don't already have the necessary songs, each pack has a <img width="46" height="48" alt="image" src="https://github.com/user-attachments/assets/a31f6b18-9b19-4298-b2c8-7835ed2427c0" /> button to direct you to the chart directory you need.
- Click play on the pack you want!

- Once you're in, you'll be presented with the Shop screen, with various panels.

<img width="322" height="102" alt="image" src="https://github.com/user-attachments/assets/21b3291b-4612-4061-90b5-e3029ff0d5a1" />

- This panel shows the current round, how much money you have, and how many stars you need to advance to the next round.

<img width="310" height="524" alt="image" src="https://github.com/user-attachments/assets/3ea5eba6-499f-4ef8-8dfb-8906ae1d792c" />

- This panel shows what's available to buy! Click the green buttons to purchase items, and hover over items to read their descriptions.
- You can also refresh the shop / the setlist, but beware! It gets more expensive with every re-roll.
- The items are all crudely drawn by hand, or screen-grabbed if they're certain references. No disgusting gen-AI nonsense here.

<img width="257" height="555" alt="image" src="https://github.com/user-attachments/assets/95b7e92c-1b80-41b1-9c0e-2aa5b2086dbc" />

- This is your inventory panel. The main ones go in the top section, and consumable items go in the bottom section. You can hold up to 5 main items, and up to 3 consumables.
- You can click on items to select them, and from there, move them around, sell them, or use them if they're consumable!

<img width="606" height="658" alt="image" src="https://github.com/user-attachments/assets/fbd1b616-f427-4880-a335-90900be5fa7e" />

- This panel is the place where you pick the next song! It tells you a bunch of info about the song, how much money you'll get for beating it, and, if it has any challenge modifiers, which ones they are.

<img width="1271" height="708" alt="image" src="https://github.com/user-attachments/assets/e910eb8d-0544-489c-b59b-7f4f970b1d23" />

- Once you click play on a song, you're locked in!
- It shows the song you need to play, and gives instructions based on game modifiers and challenges, etc.
- From here, you play the song in Clone Hero according to those modifiers.
- **Once you finish the song and have gotten to the stats screen, press the continue button.**
- The game will import your score data for the most recently played song from Clone Hero. If it can't automatically find it, it will prompt you to find the scorestats.json file (usually located alongside your badsongs.txt and other CH related files)

<img width="1271" height="707" alt="image" src="https://github.com/user-attachments/assets/d60b746c-aa96-475e-a169-cbcec928a388" />

- You'll then be brought to the game's results screen, where your star count will be modified, according to your inventory!
- Most of your inventory items will be calculated top-to-bottom, so play around with the order of things to find the most suitable combos!
- If you succeed in meeting the star target, you continue to the next round, where you visit the shop again and buy more items!
- There are plenty of items and combinations to build, many of which are wildly unbalanced at this stage lol 
- Go wild, and see how long you can make your run last! How many stars can you get?


# Pack Management

Rock & Rogue comes with some packs by default, but they are intentionally not hard-coded into the game. Packs can be changed, updated, and added, without the need for a new build of the game.

Packs come in `.rrpack` files (more on them below), and can be added in the main menu via the <img width="141" height="40" alt="image" src="https://github.com/user-attachments/assets/f4d9854f-1aac-44cf-b329-18b32bf42aca" /> button.

Should you run into any problems with packs, or just need to manage them, you can browse the packs folder by clicking the <img width="41" height="41" alt="image" src="https://github.com/user-attachments/assets/8b053e7a-455e-4b59-8d30-e7d93c940d16" /> button.

# Pack Format

Packs are distributed via `.rrpack` files, which are just plaintext JSON files, easily edited in your favourite flavour of text editor.

The format template is as follows:

```
{
	"id": "defaultPack1_CBFBCharts",
	"icon": "https://clonehero.gitlab.io/sources/icons/fuse.png",
	"title": "The AE Experience",
	"description": "The default pack, using charts from Circuit Breaker and Fuse Box!",
	"downloadLink": "https://drive.google.com/drive/folders/1FZp2hIpuB-wrz7Htl2ces6TCugzvas94",
	"startingMoney": 10,
	"difficulty": "Normal",
	"songs":[]
}
```

- `"id":` A string containing the packs internal ID. Doesn't need to follow the same format as the default packs, just needs to be different from any other pack that may be installed.
- `"icon":` A string URL linking directly to a small icon image. Needs to be a square image file.
- `"title":` A string for the in-game title of the pack.
- `"description":` A string for the short blurb under the title on the packs screen.
- `"downloadLink":` A string URL for the directory of charts needed to play the pack.
- `"startingMoney":` A positive integer, recommended somewhere between 0 and 20.
- `"difficulty":` A short string, chosen from `Easy`, `Normal`, or `Hard`.
- `"songs:"` An array of ***at least 20*** song objects, as shown below.

```
{
  	"name": "Death Perception",
  	"artist": "Æternity",
  	"charter": "Aren Eternal & Jackie",
	"genre": "Synthetic Metal",
  	"length": 218134,
	"albumArt": "https://files.enchor.us/69486abca6f6ba4045f4134c334a7024.jpg",
	"instrument": "guitar",
	"intensity": 6,
	"bucket": 6
},
```

- `"name":` A string for the song's title
- `"artist":` A string for the song's artist
- `"charter":` A string for the song's charter
- `"genre":` A string for the song's genre
- `"length":` An integer for the song's length in ms
- `"albumArt":` A string URL linking directly to an image of the song's album art. Needs to be a square image file.
- `"instrument":` A string for the song's instrument track. Usually `guitar`, but also supports `rhythm`, `guitarcoop`, `bass`, and `keys` 
- `"intensity":` An integer specifiying the track's difficulty level, usually equal to the chart's `guitar_diff` value.
- `"bucket":` An integer ranging from 0 to 7, with higher values appearing in later rounds of the game, or -1 to appear at any round.
