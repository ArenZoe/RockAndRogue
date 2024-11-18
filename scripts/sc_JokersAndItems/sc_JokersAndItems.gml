function initJokers(){
	
	global.jokers = {
		shroedinger:{
			name: "Shroedinger's Combo",
			description: "[Notes Missed] and [Notes Hit] stats are treated as equal to [Total Notes]",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.statChanger,
			icon: sp_shroedinger
		},
		wip:{
			name: "Work In Progress",
			description: "The first Setlist Reroll in each shop is free",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.economic,
			icon: sp_wip
		},
		crowd:{
			name: "Crowd Pleaser",
			description: "X1.5 Avg Mult, Setlist Rerolls cost double",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.economic,
			icon: sp_crowd
		},
		vip:{
			name: "VIP Ticket",
			description: "$2 extra per song",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.economic,
			icon: sp_vipTicket
		},
		noteworthy:{
			name: "Noteworthy",
			description: "+0.01 Avg Mult per 100 [Notes Hit]",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.linearScaler,
			icon: sp_noteworthy
		},
		aPlus:{
			name: "A+",
			description: "+0.1 Avg Mult for every percentage above 90% [Accuracy]",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.linearScaler,
			icon: sp_aPlus
		},
		serial:{
			name: "Serial",
			description: "+0.005 Avg Mult x [Best Streak]",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.linearScaler,
			icon: sp_serial
		},
		plugged:{
			name: "Plugged In",
			description: "+0.1 Avg Mult x [SP Phrases Earned]",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.linearScaler,
			icon: sp_plugged
		},
		discharged:{
			name: "Discharged",
			description: "+0.2 Avg Mult x [SP Activations]",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.linearScaler,
			icon: sp_discharged
		},
		adrenaline:{
			name: "Adrenaline Junkie",
			description: "+0.01 Avg Mult per second of [Time in SP]",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.linearScaler,
			icon: sp_adrenaline
		},
		sustain:{
			name: "Sustained",
			description: "+0.1 Avg Mult per 100 [Sustain Score]",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.linearScaler,
			icon: sp_sustained
		},
		sharpshooter:{
			name: "Sharpshooter",
			description: "+0.1 Avg Mult per Section FC",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.linearScaler,
			icon: sp_sharpshooter
		},
		cent:{
			name: "Centennial",
			count: 0,
			description: "x1.000 Avg Mult, grows by 0.001 per 100 [Notes Hit]",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.growing,
			icon: sp_cent
		},
		constellation:{
			name: "Constellation",
			count: 0,
			description: "+0.00 Avg Mult, grows by 0.05 per [Base Star]",
			rarity: 3,
			buyValue: 10,
			sellValue: 10,
			type: jType.growing,
			icon: sp_constellation
		},
		flawless:{
			name: "Flawless",
			count: 0,
			description: "+0.0 Avg Mult, grows by 0.8 per Song FC",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.growing,
			icon: sp_flawless
		},
		meticulous:{
			name: "Meticulous",
			count: 0,
			description: "+0.0 Avg Mult, grows by 0.2 when [Accuracy] > 90%",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.growing,
			icon: sp_meticulous
		},
		kickingAss:{
			name: "Kicking Ass",
			count: 0,
			description: "+0.2 Avg Mult, grows by 0.1 when [Best Streak] > 500",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.growing,
			icon: sp_kickingAss
		},
		takingNames:{
			name: "Taking Names",
			count: 0,
			description: "x1.2 Avg Mult, grows by 0.1 when [Best Streak] > 1000",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.growing,
			icon: sp_takingNames
		},
		livewire:{
			name: "Livewire",
			description: "+0.1 Avg Mult x [SP Bars Filled]",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.linearScaler,
			icon: sp_livewire
		},
		zoning:{
			name: "Zoning",
			count: 0,
			description: "+0.0 Avg Mult, grows by 0.1 per Section FC",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.growing,
			icon: sp_zoning
		},
		allYourBase:{
			name: "All Your Base",
			count: 0,
			description: "+0.00 Avg Mult, grows by 0.01 per 1000 [Base Note Score]",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.growing,
			icon: sp_allYourBase
		},
		extraCredit:{
			name: "Extra Credit",
			count: 0,
			description: "x1.5 Avg Mult, decays by 0.01 for every percentage below 100% [Accuracy]",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.decaying,
			icon: sp_extraCredit
		},
		evaporation:{
			name: "Evaporation",
			count: 0,
			description: "+2.0 Avg Mult, decays by 0.01 x [Notes Missed]",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.decaying,
			icon: sp_evaporate
		},
		borrowedTime:{
			name: "Borrowed Time",
			count: 0,
			description: "+2.0 Avg Mult, decays by 0.2 per Song",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.decaying,
			icon: sp_borrowedTime
		},
		aberration:{
			name: "Aberration",
			count: 0,
			description: "+2.0 Avg Mult, decays by 0.1 x [Overstrums]",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.decaying,
			icon: sp_aberration
		},
		idiomatic:{
			name: "Idiomatic",
			count: 0,
			description: "x2.0 Avg Mult, decays by 0.1 x [SP Phrases Missed]",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.decaying,
			icon: sp_idiomatic
		},
		spiritJar:{
			name: "Spirit Jar",
			count: 0,
			description: "+2.0 Avg Mult, decays by 0.1 per 10 [Ghost Inputs]",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.decaying,
			icon: sp_spiritJar
		},
		bigTipper:{
			name: "Big Tipper",
			count: 0,
			description: "$4 extra per Song, decays per Section under 90% Accuracy",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.decaying,
			icon: sp_bigTip
		},
		satisfying: {
			name: "Satisfying",
			count: 0,
			description: "+5.0 Avg Mult when [Best Streak] is evenly divisible by 100",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.flatBig,
			icon: sp_satisfy
		},
		friedChicken: {
			name: "Fried Chicken",
			count: 0,
			description: "x2.0 Avg Mult when achieving an FC",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.flatBig,
			icon: sp_friedChicken
		},
		bullseye: {
			name: "Bullseye",
			count: 0,
			description: "+4.4 Avg Mult when [Base Avg Mult] is between 4.400 - 4.450",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.flatBig,
			icon: sp_bullseye
		},
		rhythmic: {
			name: "Rhythmic",
			count: 0,
			description: "x1.5 Avg Mult when [Overstrums] = 0",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.flatBig,
			icon: sp_rhythmic
		},
		fameAndFortune: {
			name: "Fame and Fortune",
			count: 0,
			description: "x1.5 Avg Mult when [SP Phrases hit] = [SP Total Phrases]",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.flatBig,
			icon: sp_fame
		},
		exorcism: {
			name: "Exorcism",
			count: 0,
			description: "x1.5 Avg Mult when [Ghost Inputs] < 10",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.flatBig,
			icon: sp_exorcism
		},
		hotStreak: {
			name: "Hot Streak",
			count: 0,
			description: "x1.2 Avg Mult when [Best Streak] > 500",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.flatSmall,
			icon: sp_hotStreak
		},
		studied: {
			name: "Studied",
			count: 0,
			description: "+1.0 Avg Mult when [Accuracy] > 90%",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.flatSmall,
			icon: sp_study
		},
		waterHole: {
			name: "Water Hole",
			count: 0,
			description: "+1.0 Avg Mult when [Notes Missed] < 50",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.flatSmall,
			icon: sp_waterHole
		},
		discipline: {
			name: "Discipline",
			count: 0,
			description: "+1.0 Avg Mult when [Overstrums] < 25",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.flatSmall,
			icon: sp_discipline
		},
		pyrotechnic: {
			name: "Pyrotechnic",
			count: 0,
			description: "+1.0 Avg Mult when [SP Activations] > 4",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.flatSmall,
			icon: sp_pyro
		},
		hesitant: {
			name: "Hesitant",
			count: 0,
			description: "+1.0 Avg Mult when [SP Activations] < 4",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.flatSmall,
			icon: sp_hesitant
		},
		ghostbuster: {
			name: "Ghostbuster",
			count: 0,
			description: "+1.0 Avg Mult when [Ghost Inputs] < 20",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.flatSmall,
			icon: sp_ghostbuster
		},
		jackOfAllTrades: {
			name: "Jack of All Trades",
			count: 0,
			description: "+1.0 Avg Mult when weakest Section Accuracy > 80%",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.flatSmall,
			icon: sp_jack
		},
		booster: {
			name: "Booster",
			count: 0,
			description: "+1.0 Avg Mult",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.passive,
			icon: sp_booster
		},
		oneUp: {
			name: "1-UP",
			count: 0,
			description: "+1 Star",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.passive,
			icon: sp_1up
		},
		turboPower: {
			name: "Turbo Power",
			count: 0,
			description: "x1.5 Avg Mult",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.passive,
			icon: sp_turbo
		},
		superPower: {
			name: "Super Power",
			count: 0,
			description: "x2.0 Avg Mult",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.passive,
			icon: sp_super
		},
		instantReplay: {
			name: "Instant Replay",
			count: 0,
			description: "Becomes a copy of the most recently acquired Item",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.duplicator,
			icon: sp_replay
		},
		copycat: {
			name: "Copycat",
			count: 0,
			description: "Becomes a copy of the next acquired Item",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.duplicator,
			icon: sp_copy
		},
		optionalNotes: {
			name: "Optional Notes",
			count: 0,
			description: "[Notes Missed] x 0.5",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.statChanger,
			icon: sp_optional
		},
		astigmatism: {
			name: "Astigmatism",
			count: 0,
			description: "[Best Streak] x1.5",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.statChanger,
			icon: sp_astigma
		},
		juggernaut: {
			name: "Juggernaut",
			count: 0,
			description: "[Overstrums] -20",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.statChanger,
			icon: sp_jug
		},
		phrasing: {
			name: "Phrasing",
			count: 0,
			description: "[SP Phrases Hit] + 5",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.statChanger,
			icon: sp_phrasing
		},
		doubleTime: {
			name: "Double Time",
			count: 0,
			description: "[SP Active Time] x2",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.statChanger,
			icon: sp_doubleTime
		},
		elusiveSpirit: {
			name: "Elusive Spirit",
			count: 0,
			description: "[Ghost Inputs] x0.5",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.statChanger,
			icon: sp_elusiveSpirit
		},
		growthSpurt: {
			name: "Growth Spurt",
			count: 0,
			description: "Growing Items grow twice",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.synergizer,
			icon: sp_growthSpurt
		},
		highEndurance: {
			name: "High Endurance",
			count: 0,
			description: "Decaying Items decay half as much",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.synergizer,
			icon: sp_highEndurance
		},
		employeeDiscount: {
			name: "Employee Discount",
			count: 0,
			description: "Shop prices -$1",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.economic,
			icon: sp_employeeDiscount
		},
		fireSale: {
			name: "Fire Sale",
			count: 0,
			description: "Shop prices -50%",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.economic,
			icon: sp_fireSale
		},
		restock: {
			name: "Restock",
			count: 0,
			description: "Song Refresh price -$4",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.economic,
			icon: sp_restock
		},
		doubleTap: {
			name: "Double Tap",
			count: 0,
			description: "Consumables duplicate when used. Activates after using 10 Consumables",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.toggle,
			icon: sp_doubleTap
		},
		overkill: {
			name: "Overkill",
			count: 0,
			description: "x3.0 Avg Mult. Activates after 5 FCs",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.toggle,
			icon: sp_overkill
		},
		blackHole: {
			name: "Black Hole",
			count: 0,
			description: "x10.0 Avg Mult. Activates after 1000 [Notes Missed]",
			rarity: 3,
			buyValue: 10,
			sellValue: 10,
			type: jType.toggle,
			icon: sp_blackHole
		},
		collector: {
			name: "Collector",
			count: 0,
			description: "+10 Stars. Activates after 100 Stars acquired",
			rarity: 3,
			buyValue: 10,
			sellValue: 10,
			type: jType.toggle,
			icon: sp_collect
		},
		magicEraser: {
			name: "Magic Eraser",
			count: 0,
			description: "[Overstrums] and [Ghost Inputs] = 0. Activates when either are greater than [Total Notes]",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.toggle,
			icon: sp_magicEraser
		},
		sleightOfHand: {
			name: "Sleight of Hand",
			count: 0,
			description: "x1.1 Avg Mult, +0.1 per 5% speed-up increment",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.special,
			icon: sp_speedCola
		},
		challenger: {
			name: "Challenger",
			count: 0,
			description: "x1.1 Avg Mult, +0.2 for every active challenge modifier",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.special,
			icon: sp_challenger
		},
		setInStone: {
			name: "Set In Stone",
			count: 0,
			description: "Shop prices set to $0, Setlist Rerolls are disabled",
			rarity: 3,
			buyValue: 10,
			sellValue: 10,
			type: jType.special,
			icon: sp_setInStone
		},
		stonks: {
			name: "Stonks",
			count: 0,
			description: "+0.05 Avg Mult x [Money]",
			rarity: 3,
			buyValue: 10,
			sellValue: 10,
			type: jType.linearScaler,
			icon: sp_stonks
		},
		rngesus: {
			name: "RNGesus",
			count: 0,
			description: "-2.0 to +5.0 Avg Mult",
			rarity: 0,
			buyValue: 4,
			sellValue: 4,
			type: jType.special,
			icon: sp_rng
		},
		staminup: {
			name: "Staminup",
			count: 0,
			description: "+0.0 Avg Mult, grows by 0.5 per Song",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.growing,
			icon: sp_staminup
		},
		powerHungry: {
			name: "Power Hungry",
			count: 0,
			description: "+0.5 Avg Mult, +1.0 per Consumable used, resets after each Song",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.special,
			icon: sp_powerHungry
		},
		revive: {
			name: "Revive",
			count: 0,
			description: "Prevents death, destroyed when used",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.special,
			icon: sp_revive
		},
		surplus: {
			name: "Surplus",
			count: 0,
			description: "Gain one random consumable after each Song",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.special,
			icon: sp_surplus
		},
		nullCombo: {
			name: "Null Combo",
			count: 0,
			description: "All Songs are considered FCs, but your notes hit/missed/streak are unchanged.",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.special,
			icon: sp_nullCombo
		},
		gluttony: {
			name: "Gluttony",
			count: 0,
			description: "+0.0 Avg Mult, grows by 0.1 per Consumable used",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.growing,
			icon: sp_glutton
		},
		bassGrooved: {
			name: "Bass Grooved",
			count: 0,
			description: "Notes in your Best Streak are recalculated to have a 6x combo multiplier",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.linearScaler,
			icon: sp_bassGroove
		},
		soloSuite: {
			name: "Solo Suite",
			count: 0,
			description: "[Solo Bonus] now contributes to Avg Mult",
			rarity: 1,
			buyValue: 5,
			sellValue: 5,
			type: jType.statChanger,
			icon: sp_soloSuite
		},
		calculated: {
			name: "Calculated",
			count: 0,
			description: "x2.0 Avg Mult when [Overstrums] = 10",
			rarity: 3,
			buyValue: 10,
			sellValue: 10,
			type: jType.flatBig,
			icon: sp_calculated
		},
		inconsistent: {
			name: "(In)Consistent",
			count: 0,
			description: "x3.0 Avg Mult when [Best Streak] < 50",
			rarity: 3,
			buyValue: 10,
			sellValue: 10,
			type: jType.flatBig,
			icon: sp_inconsistent
		},
		starPower: {
			name: "Star Power",
			count: 0,
			description: " +1 Star per [Base Star]",
			rarity: 4,
			buyValue: 15,
			sellValue: 15,
			type: jType.passive,
			icon: sp_sp
		},
		backHeavy: {
			name: "Back Heavy",
			count: 0,
			description: "x1.5 Avg Mult when [Final Streak] = [Best Streak]",
			rarity: 2,
			buyValue: 7,
			sellValue: 7,
			type: jType.flatBig,
			icon: sp_backHeavy
		},
		reverseChoke: {
			name: "Reverse Choke",
			count: 0,
			description: "x2 Stars. Activates when missing only one note, in the first section of a song",
			rarity: 4,
			buyValue: 15,
			sellValue: 15,
			type: jType.toggle,
			icon: sp_reverseChoke
		},
		awesomeChoke: {
			name: "Awesome Choke!",
			count: 0,
			description: "x2 Stars. Activates when missing only one note, in the last section of a song",
			rarity: 4,
			buyValue: 15,
			sellValue: 15,
			type: jType.toggle,
			icon: sp_awesomeChoke
		}
		//
		//:{
		//	name: "",
		//  count: ,
		//	description: "",
		//	rarity: ,
		//	buyValue: ,
		//	sellValue: ,
		//	type: ,
		//	icon: 
		//},
	};	
}

function initItems(){
	
	global.items = {
		testItem1:{
			name: "Test Item 1",
			description: "Test Item 1",
			buyValue: 1,
			sellValue: 1,
			icon: sp_testItem1,
			rarity: 0
		},
		testItem2:{
			name: "Test Item 2",
			description: "Test Item 2",
			buyValue: 2,
			sellValue: 2,
			icon: sp_testItem2,
			rarity: 0
		},
		testItem3:{
			name: "Test Item 3",
			description: "Test Item 3",
			buyValue: 3,
			sellValue: 3,
			icon: sp_testItem3,
			rarity: 0
		},
		testItem4:{
			name: "Test Item 4",
			description: "Test Item 4",
			buyValue: 4,
			sellValue: 4,
			icon: sp_testItem4,
			rarity: 0
		},
		testItem5:{
			name: "Test Item 5",
			description: "Test Item 5",
			buyValue: 5,
			sellValue: 5,
			icon: sp_testItem5,
			rarity: 0
		},
		testItem6:{
			name: "Test Item 6",
			description: "Test Item 6",
			buyValue: 6,
			sellValue: 6,
			icon: sp_testItem6,
			rarity: 0
		}
		
	};	
}