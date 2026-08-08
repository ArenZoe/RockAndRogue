function initJokers(){
	
	global.jokers = {
		shroedinger:{
			name: "Shroedinger's Combo",
			count: 0,
			description: "[Notes Missed] and [Notes Hit] stats are treated as equal to [Total Notes]",
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.statChanger,
			icon: sp_shroedinger
		},
		wip:{
			name: "Work In Progress",
			count: 0,
			description: "The first Setlist Reroll in each shop is free",
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.economic,
			icon: sp_wip
		},
		crowd:{
			name: "Crowd Pleaser",
			count: 0,
			description: "X1.5 Avg Mult, Setlist Rerolls cost double",
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.economic,
			icon: sp_crowd
		},
		vip:{
			name: "VIP Ticket",
			count: 0,
			description: "$2 extra per song",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.economic,
			icon: sp_vipTicket
		},
		noteworthy:{
			name: "Noteworthy",
			count: 0,
			description: "+0.01 Avg Mult per 100 [Notes Hit]",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.linearScaler,
			icon: sp_noteworthy
		},
		aPlus:{
			name: "A+",
			count: 0,
			description: "+0.1 Avg Mult for every percentage above 90% [Accuracy]",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.linearScaler,
			icon: sp_aPlus
		},
		serial:{
			name: "Serial",
			count: 0,
			description: "+0.005 Avg Mult per note in your [Best Streak]",
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.linearScaler,
			icon: sp_serial
		},
		plugged:{
			name: "Plugged In",
			count: 0,
			description: "+0.1 Avg Mult per [SP Phrases Earned]",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.linearScaler,
			icon: sp_plugged
		},
		discharged:{
			name: "Discharged",
			count: 0,
			description: "+0.2 Avg Mult per [SP Activations]",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.linearScaler,
			icon: sp_discharged
		},
		adrenaline:{
			name: "Adrenaline Junkie",
			count: 0,
			description: "+0.01 Avg Mult per second of [Time in SP]",
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.linearScaler,
			icon: sp_adrenaline
		},
		sustain:{
			name: "Sustained",
			count: 0,
			description: "+0.01 Avg Mult per 100 [Sustain Score]",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.linearScaler,
			icon: sp_sustained
		},
		sharpshooter:{
			name: "Sharpshooter",
			count: 0,
			description: "+0.1 Avg Mult per Section FC",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.linearScaler,
			icon: sp_sharpshooter
		},
		cent:{
			name: "Centennial",
			count: 0,
			description: "x Avg Mult, grows by 0.001 per 100 [Notes Hit]", //x1.000 Avg Mult, grows by 0.001 per 1000 [Notes Hit]
			startVal: 1.00,
			grow: 0.001,
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.growing,
			icon: sp_cent
		},
		constellation:{
			name: "Constellation",
			count: 0,
			description: "+ Avg Mult, grows by 0.05 per [Base Star]", //+0.00 Avg Mult, grows by 0.05 per [Base Star]
			startVal: 0.00,
			grow: 0.05,
			rarity: 3,
			buyValue: 10,
			sellValue: 3,
			type: jType.growing,
			icon: sp_constellation
		},
		flawless:{
			name: "Flawless",
			count: 0,
			description: "+ Avg Mult, grows by 0.8 per Song FC", //+0.0 Avg Mult, grows by 0.8 per Song FC
			startVal: 0.0,
			grow: 0.8,
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.growing,
			icon: sp_flawless
		},
		meticulous:{
			name: "Meticulous",
			count: 0,
			description: "+ Avg Mult, grows by 0.2 when [Accuracy] > 90%", //+0.0 Avg Mult, grows by 0.2 when [Accuracy] > 90%
			startVal: 0.0,
			grow: 0.2,
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.growing,
			icon: sp_meticulous
		},
		kickingAss:{
			name: "Kicking Ass",
			count: 0,
			description: "+ Avg Mult, grows by 0.2 when [Best Streak] > 500", //+0.2 Avg Mult, grows by 0.1 when [Max Streak] > 500
			startVal: 0.2,
			grow: 0.2,
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.growing,
			icon: sp_kickingAss
		},
		takingNames:{
			name: "Taking Names",
			count: 0,
			description: "x Avg Mult, grows by 0.1 when [Best Streak] > 1000", //x1.2 Avg Mult, grows by 0.1 when [Max Streak] > 1000
			startVal: 1.2,
			grow: 0.1,
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.growing,
			icon: sp_takingNames
		},
		livewire:{
			name: "Livewire",
			count: 0,
			description: "+0.1 Avg Mult per [SP Bars Filled]",
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.linearScaler,
			icon: sp_livewire
		},
		zoning:{
			name: "Zoning",
			count: 0,
			description: "+ Avg Mult, grows by 0.02 per Section FC", //"+0.0 Avg Mult, grows by 0.2 per Section FC
			startVal: 0.0,
			grow: 0.02,
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.growing,
			icon: sp_zoning
		},
		allYourBase:{
			name: "All Your Base",
			count: 0,
			description: "+ Avg Mult, grows by 0.01 per 2000 [Base Note Score]", //+0.00 Avg Mult, grows by 0.01 per 1000 [Base Note Score]
			startVal: 0.00,
			grow: 0.01,
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.growing,
			icon: sp_allYourBase
		},
		extraCredit:{
			name: "Extra Credit",
			count: 0,
			description: "x Avg Mult, decays by 0.01 for every percentage below 100% [Accuracy]", //x1.5 Avg Mult, decays by 0.01 for every percentage below 100% [Accuracy]
			startVal: 1.50,
			grow: -0.01,
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.decaying,
			icon: sp_extraCredit
		},
		evaporation:{
			name: "Evaporation",
			count: 0,
			description: "+ Avg Mult, decays by 0.01 per [Notes Missed]", //+2.0 Avg Mult, decays by 0.01 x [Notes Missed]
			startVal: 2.00,
			grow: -0.01,
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.decaying,
			icon: sp_evaporate
		},
		borrowedTime:{
			name: "Borrowed Time",
			count: 0,
			description: "+ Avg Mult, decays by 0.2 per Song", //+2.0 Avg Mult, decays by 0.2 per Song
			startVal: 2.0,
			grow: -0.1, //half of what the desc says since we increment its count by 2 most of the time
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.decaying,
			icon: sp_borrowedTime
		},
		aberration:{
			name: "Aberration",
			count: 0,
			description: "+ Avg Mult, decays by 0.1 per [Overstrums]", //+2.0 Avg Mult, decays by 0.1 x [Overstrums]
			startVal: 2.0,
			grow: -0.1,
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.decaying,
			icon: sp_aberration
		},
		idiomatic:{
			name: "Idiomatic",
			count: 0,
			description: "x Avg Mult, decays by 0.1 per [SP Phrases Missed]", //x2.0 Avg Mult, decays by 0.1 x [SP Phrases Missed]
			startVal: 2.0,
			grow: -0.1,
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.decaying,
			icon: sp_idiomatic
		},
		spiritJar:{
			name: "Spirit Jar",
			count: 0,
			description: "+ Avg Mult, decays by 0.1 per 5 [Ghost Inputs]", //+2.0 Avg Mult, decays by 0.1 per 10 [Ghost Inputs]
			startVal: 2.0,
			grow: -0.1,
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.decaying,
			icon: sp_spiritJar
		},
		bigTipper:{
			name: "Big Tipper",
			count: 0,
			description: "$ extra per Song, decays per Section under 90% Accuracy", //$4 extra per Song, decays per Section under 90% Accuracy
			startVal: 4,
			grow: -1,
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.decaying,
			icon: sp_bigTip
		},
		satisfying: {
			name: "Satisfying",
			count: 0,
			description: "+5.0 Avg Mult when [Best Streak] is evenly divisible by 100",
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.flatBig,
			icon: sp_satisfy
		},
		friedChicken: {
			name: "Fried Chicken",
			count: 0,
			description: "x2.0 Avg Mult when achieving an FC",
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.flatBig,
			icon: sp_friedChicken
		},
		bullseye: {
			name: "Bullseye",
			count: 0,
			description: "+4.4 Avg Mult when [Base Avg Mult] is between 4.400 - 4.450",
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.flatBig,
			icon: sp_bullseye
		},
		rhythmic: {
			name: "Rhythmic",
			count: 0,
			description: "x1.5 Avg Mult when [Overstrums] = 0",
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.flatBig,
			icon: sp_rhythmic
		},
		fameAndFortune: {
			name: "Fame and Fortune",
			count: 0,
			description: "x1.5 Avg Mult when [SP Phrases hit] = [SP Total Phrases]",
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.flatBig,
			icon: sp_fame
		},
		exorcism: {
			name: "Exorcism",
			count: 0,
			description: "x1.5 Avg Mult when [Ghost Inputs] < 10",
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.flatBig,
			icon: sp_exorcism
		},
		hotStreak: {
			name: "Hot Streak",
			count: 0,
			description: "x1.2 Avg Mult when [Best Streak] > 500",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.flatSmall,
			icon: sp_hotStreak
		},
		studied: {
			name: "Studied",
			count: 0,
			description: "+1.0 Avg Mult when [Accuracy] > 90%",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.flatSmall,
			icon: sp_study
		},
		waterHole: {
			name: "Water Hole",
			count: 0,
			description: "+1.0 Avg Mult when [Notes Missed] < 50",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.flatSmall,
			icon: sp_waterHole
		},
		discipline: {
			name: "Discipline",
			count: 0,
			description: "+1.0 Avg Mult when [Overstrums] < 25",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.flatSmall,
			icon: sp_discipline
		},
		pyrotechnic: {
			name: "Pyrotechnic",
			count: 0,
			description: "+1.0 Avg Mult when [SP Activations] > 4",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.flatSmall,
			icon: sp_pyro
		},
		hesitant: {
			name: "Hesitant",
			count: 0,
			description: "+1.0 Avg Mult when [SP Activations] < 4",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.flatSmall,
			icon: sp_hesitant
		},
		ghostbuster: {
			name: "Ghostbuster",
			count: 0,
			description: "+1.0 Avg Mult when [Ghost Inputs] < 20",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.flatSmall,
			icon: sp_ghostbuster
		},
		jackOfAllTrades: {
			name: "Jack of All Trades",
			count: 0,
			description: "+1.0 Avg Mult when weakest Section Accuracy > 80%",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.flatSmall,
			icon: sp_jack
		},
		booster: {
			name: "Booster",
			count: 0,
			description: "+1.0 Avg Mult",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.passive,
			icon: sp_booster
		},
		oneUp: {
			name: "1-UP",
			count: 0,
			description: "+1 Star",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.passive,
			icon: sp_1up
		},
		turboPower: {
			name: "Turbo Power",
			count: 0,
			description: "x1.2 Avg Mult",
			rarity: 3,
			buyValue: 10,
			sellValue: 3,
			type: jType.passive,
			icon: sp_turbo
		},
		superPower: {
			name: "Super Power",
			count: 0,
			description: "x1.5 Avg Mult",
			rarity: 4,
			buyValue: 15,
			sellValue: 4,
			type: jType.passive,
			icon: sp_super
		},
		instantReplay: {
			name: "Instant Replay",
			count: 0,
			description: "Becomes a copy of your bottom-most Power-Up",
			rarity: 4,
			buyValue: 15,
			sellValue: 4,
			type: jType.duplicator,
			icon: sp_replay
		},
		copycat: {
			name: "Copycat",
			count: 0,
			description: "Becomes a copy of the next acquired Power-Up",
			rarity: 3,
			buyValue: 10,
			sellValue: 3,
			type: jType.duplicator,
			icon: sp_copy
		},
		optionalNotes: {
			name: "Optional Notes",
			count: 0,
			description: "Your [Notes Missed] stat is halved",
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.statChanger,
			icon: sp_optional
		},
		astigmatism: {
			name: "Astigmatism",
			count: 0,
			description: "Your [Best Streak] stat is increased by 50%",
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.statChanger,
			icon: sp_astigma
		},
		juggernaut: {
			name: "Juggernaut",
			count: 0,
			description: "Your [Overstrums] stat is decreased by 20",
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.statChanger,
			icon: sp_jug
		},
		phrasing: {
			name: "Phrasing",
			count: 0,
			description: "Your [SP Phrases Hit] stat is increased by 5",
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.statChanger,
			icon: sp_phrasing
		},
		doubleTime: {
			name: "Double Time",
			count: 0,
			description: "Your [SP Active Time] stat is doubled",
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.statChanger,
			icon: sp_doubleTime
		},
		elusiveSpirit: {
			name: "Elusive Spirit",
			count: 0,
			description: "Your [Ghost Inputs] stat is halved",
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.statChanger,
			icon: sp_elusiveSpirit
		},
		growthSpurt: {
			name: "Growth Spurt",
			count: 0,
			description: "Growing Items grow twice",
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.synergizer,
			icon: sp_growthSpurt
		},
		highEndurance: {
			name: "High Endurance",
			count: 0,
			description: "Decaying Items decay half as much",
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.synergizer,
			icon: sp_highEndurance
		},
		employeeDiscount: {
			name: "Employee Discount",
			count: 0,
			description: "Shop prices -$1",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.economic,
			icon: sp_employeeDiscount
		},
		fireSale: {
			name: "Fire Sale",
			count: 0,
			description: "Shop prices -50%",
			rarity: 3,
			buyValue: 10,
			sellValue: 3,
			type: jType.economic,
			icon: sp_fireSale
		},
		restock: {
			name: "Restock",
			count: 0,
			description: "Shop Refresh price -$4",
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.economic,
			icon: sp_restock
		},
		doubleTap: {
			name: "Double Tap",
			count: 0,
			description: "+1.0 Avg Mult per [Notes Squeezed]",
			rarity: 3,
			buyValue: 10,
			sellValue: 3,
			type: jType.linearScaler,
			icon: sp_doubleTap
		},
		overkill: {
			name: "Overkill",
			count: 0,
			subCount: 0,
			description: "x3.0 Avg Mult. Permanently activates after 5 FCs",
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.toggle,
			icon: sp_overkill
		},
		blackHole: {
			name: "Black Hole",
			count: 0,
			subCount: 0,
			startVal: 1000,
			description: "x10.0 Avg Mult. Permanently activates after (~) [Notes Missed]", //starts at 1000 notes
			rarity: 3,
			buyValue: 10,
			sellValue: 3,
			type: jType.toggle,
			icon: sp_blackHole
		},
		collector: {
			name: "Collector",
			count: 0,
			subCount: 0,
			startVal: 100,
			description: "+10 Stars. Permanently activates after (~) Stars acquired", //starts at 100 Stars
			rarity: 3,
			buyValue: 10,
			sellValue: 3,
			type: jType.toggle,
			icon: sp_collect
		},
		magicEraser: {
			name: "Magic Eraser",
			count: 0,
			description: "[Overstrums]&[Ghost Inputs] are set to 0. Activates when either are greater than [Total Notes]",
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.toggle,
			icon: sp_magicEraser
		},
		sleightOfHand: {
			name: "Sleight of Hand",
			count: 0,
			description: "x1.1 Avg Mult per 10% speed-up increment. You may freely speed-up songs",
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.special,
			icon: sp_speedCola
		},
		challenger: {
			name: "Challenger",
			count: 0,
			description: "x1.1 Avg Mult, +0.2 per every active challenge modifier",
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.special,
			icon: sp_challenger
		},
		setInStone: {
			name: "Set In Stone",
			count: 0,
			description: "Shop prices set to $2, Setlist & Shop Rerolls are disabled",
			rarity: 3,
			buyValue: 10,
			sellValue: 3,
			type: jType.special,
			icon: sp_setInStone
		},
		stonks: {
			name: "Stonks",
			count: 0,
			description: "+0.1 Avg Mult per [Money]",
			rarity: 3,
			buyValue: 10,
			sellValue: 3,
			type: jType.linearScaler,
			icon: sp_stonks
		},
		rngesus: {
			name: "RNGesus",
			count: 0,
			description: "-2.0 to +5.0 Avg Mult",
			rarity: 0,
			buyValue: 4,
			sellValue: 1,
			type: jType.special,
			icon: sp_rng
		},
		staminup: {
			name: "Staminup",
			count: 0,
			description: "+ Avg Mult, grows by 0.2 per Song", //+0.0 Avg Mult, grows by 0.2 per Song
			startVal: 0.0,
			grow: 0.2,
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.growing,
			icon: sp_staminup
		},
		powerHungry: {
			name: "Power Hungry",
			count: 0,
			description: "+1.0 Avg Mult per [SP Bars Filled]",
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.linearScaler,
			icon: sp_powerHungry
		},
		revive: {
			name: "Revive",
			count: 0,
			description: "Saves you, once",
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.special,
			icon: sp_revive
		},
		surplus: {
			name: "Surplus",
			count: 0,
			description: "Gain one random consumable after each Song",
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.special,
			icon: sp_surplus
		},
		nullCombo: {
			name: "Null Combo",
			count: 0,
			description: "Every song is considered an FC. Does not change any note-related stats",
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.special,
			icon: sp_nullCombo
		},
		gluttony: {
			name: "Gluttony",
			count: 0,
			description: "+ Avg Mult, grows by 0.1 per Consumable used", //+0.0 Avg Mult, grows by 0.1 per Consumable used
			startVal: 0.0,
			grow: 0.1,
			rarity: 1,
			buyValue: 5,
			sellValue: 1,
			type: jType.growing,
			icon: sp_glutton
		},
		bassGrooved: {
			name: "Bass Grooved",
			count: 0,
			description: "+0.005 Avg Mult per note in your [Ending Streak]",
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.linearScaler,
			icon: sp_bassGroove
		},
		soloSuite: {
			name: "Solo Suite",
			count: 0,
			description: "+0.005 Avg Mult per note hit in a Solo section",
			rarity: 4,
			buyValue: 15,
			sellValue: 4,
			type: jType.linearScaler,
			icon: sp_soloSuite
		},
		calculated: {
			name: "Calculated",
			count: 0,
			description: "x2.0 Avg Mult when [Overstrums] = 10",
			rarity: 3,
			buyValue: 10,
			sellValue: 3,
			type: jType.flatBig,
			icon: sp_calculated
		},
		inconsistent: {
			name: "(In)Consistent",
			count: 0,
			description: "x3.0 Avg Mult when [Best Streak] < 50",
			rarity: 3,
			buyValue: 10,
			sellValue: 3,
			type: jType.flatBig,
			icon: sp_inconsistent
		},
		starPower: {
			name: "Star Power",
			count: 0,
			description: " +1 Star per [Base Star]",
			rarity: 4,
			buyValue: 15,
			sellValue: 4,
			type: jType.passive,
			icon: sp_sp
		},
		backHeavy: {
			name: "Back Heavy",
			count: 0,
			description: "x1.5 Avg Mult when [Ending Streak] = [Best Streak]",
			rarity: 2,
			buyValue: 7,
			sellValue: 2,
			type: jType.flatBig,
			icon: sp_backHeavy
		},
		reverseChoke: {
			name: "Reverse Choke",
			count: 0,
			description: "x2 Stars. Permanently activates when only missing one note, and only in the first section of a song",
			rarity: 4,
			buyValue: 15,
			sellValue: 4,
			type: jType.toggle,
			icon: sp_reverseChoke
		},
		awesomeChoke: {
			name: "Awesome Choke!",
			count: 0,
			description: "x2 Stars. Permanently activates when only missing one note, and only in the last section of a song",
			rarity: 4,
			buyValue: 15,
			sellValue: 4,
			type: jType.toggle,
			icon: sp_awesomeChoke
		},
		unstable: {
			name: "Unstable",
			count: 0,
			description: "x2 Stars. Self destructs if you overstrum",
			rarity: 4,
			buyValue: 15,
			sellValue: 4,
			type: jType.special,
			icon: sp_unstable
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
		more:{
			name: "MORE!!!!!!1!",
			description: "Create up to two random consumables",
			buyValue: 6,
			sellValue: 2,
			icon: sp_more
		},
		picky:{
			name: "Picky",
			description: "Ignore any one (1) modifier on the next song",
			buyValue: 10,
			sellValue: 3,
			icon: sp_picky
		},
		drunk:{
			name: "Alcomohol,",
			description: "Enable [Drunk Mode] on the next song",
			buyValue: 15,
			sellValue: 4,
			icon: sp_drunk
		},
		hopos:{
			name: "Hop-O's",
			description: "Enable [All HOPOs] on the next song",
			buyValue: 7,
			sellValue: 2,
			icon: sp_hopos
		},
		taps:{
			name: "Tippity Taps",
			description: "Enable [All Taps] on the next song",
			buyValue: 10,
			sellValue: 3,
			icon: sp_taps 
		},
		opens:{
			name: "Open Sesame",
			description: "Enable [All Opens] on the next song",
			buyValue: 6,
			sellValue: 2,
			icon: sp_opens
		},
		hoposToTaps:{
			name: "Tapped Out",
			description: "Enable [HOPOs to Taps] on the next song",
			buyValue: 5,
			sellValue: 1,
			icon: sp_hoposToTaps
		},
		autoStrum:{
			name: "Strummer? I Har-",
			description: "Enable [Auto Strum] on the next song",
			buyValue: 18,
			sellValue: 5,
			icon: sp_autoStrum
		},
		slow:{
			name: "Slow Ride",
			description: "Take it easy. Reduce the next song's play speed by 10%",
			buyValue: 5,
			sellValue: 1,
			icon: sp_slow
		},
		freeMoney:{
			name: "Finder's Keepers",
			description: "Get $5",
			buyValue: 2,
			sellValue: 1,
			icon: sp_freeMoney
		},
		gamble:{
			name: "Gamba",
			description: "Random prize from -$5 to +$20",
			buyValue: 5,
			sellValue: 1,
			icon: sp_gamble
		},
		setlist:{
			name: "New Release",
			description: "Refresh the Setlist",
			buyValue: 5,
			sellValue: 1,
			icon: sp_setlist
		},
		shop:{
			name: "Secret Menu",
			description: "Refresh the Shop",
			buyValue: 5,
			sellValue: 1,
			icon: sp_shop
		},
		hard:{
			name: "High Grade",
			description: "Double your money, Star requirement increased by 20%",
			buyValue: 5,
			sellValue: 1,
			icon: sp_hard
		},
		easy:{
			name: "Shortcut",
			description: "Lose all your money, Star requirement decreased by 20%",
			buyValue: 7,
			sellValue: 2,
			icon: sp_easy
		}
	};	
}