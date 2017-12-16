--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_wearables_armor_infiltrator_armor_infiltrator_s01_gloves = object_revelation_tangible_wearables_armor_infiltrator_shared_armor_infiltrator_s01_gloves:new {
	templateType = ARMOROBJECT,

	objectMenuComponent = {"cpp", "ArmorObjectMenuComponent"},	

	playerRaces = { "object/creature/player/bothan_male.iff",
				"object/creature/player/bothan_female.iff",
				"object/creature/player/human_male.iff",
				"object/creature/player/human_female.iff",
				"object/creature/player/moncal_male.iff",
				"object/creature/player/moncal_female.iff",
				"object/creature/player/rodian_male.iff",
				"object/creature/player/rodian_female.iff",
				"object/creature/player/sullustan_male.iff",
				"object/creature/player/sullustan_female.iff",
				"object/creature/player/trandoshan_male.iff",
				"object/creature/player/trandoshan_female.iff",
				"object/creature/player/twilek_male.iff",
				"object/creature/player/twilek_female.iff",
				"object/creature/player/zabrak_male.iff",
				"object/creature/player/zabrak_female.iff",
				"object/mobile/vendor/aqualish_female.iff",
				"object/mobile/vendor/aqualish_male.iff",
				"object/mobile/vendor/bothan_female.iff",
				"object/mobile/vendor/bothan_male.iff",
				"object/mobile/vendor/devaronian_male.iff",
				"object/mobile/vendor/human_female.iff",
				"object/mobile/vendor/human_male.iff",
				"object/mobile/vendor/moncal_female.iff",
				"object/mobile/vendor/moncal_male.iff",
				"object/mobile/vendor/nikto_male.iff",
				"object/mobile/vendor/rodian_female.iff",
				"object/mobile/vendor/rodian_male.iff",
				"object/mobile/vendor/sullustan_female.iff",
				"object/mobile/vendor/sullustan_male.iff",
				"object/mobile/vendor/trandoshan_female.iff",
				"object/mobile/vendor/trandoshan_male.iff",
				"object/mobile/vendor/twilek_female.iff",
				"object/mobile/vendor/twilek_male.iff",
				"object/mobile/vendor/weequay_male.iff",
				"object/mobile/vendor/zabrak_female.iff",
				"object/creature/player/wookiee_male.iff",
				"object/mobile/vendor/zabrak_male.iff" },
	
	-- Damage types in WeaponObject
	vulnerability = STUN,

	specialResists = KINETIC,

	-- These are default Blue Frog stats
	healthEncumbrance = 80,
	actionEncumbrance = 80,
	mindEncumbrance = 50,

	maxCondition = 30000,

	-- LIGHT, MEDIUM, HEAVY
	rating = LIGHT,

	kinetic = 50,
	energy = 50,
	electricity = 50,
	stun = 15,
	blast = 50,
	heat = 50,
	cold = 50,
	acid = 50,
	lightSaber = 10,

	numberExperimentalProperties = {1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 2, 1},
	experimentalProperties = {"XX", "XX", "XX", "XX", "OQ", "SR", "OQ", "UT", "MA", "OQ", "MA", "OQ", "MA", "OQ", "XX", "XX", "OQ", "SR", "XX"},
	experimentalWeights = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	experimentalGroupTitles = {"null", "null", "null", "exp_durability", "exp_quality", "exp_resistance", "exp_durability", "exp_durability", "exp_durability", "null", "null", "exp_resistance", "null"},
	experimentalSubGroupTitles = {"null", "null", "sockets", "hit_points", "armor_effectiveness", "armor_integrity", "armor_health_encumbrance", "armor_action_encumbrance", "armor_mind_encumbrance", "armor_rating", "armor_special_type", "armor_special_effectiveness", "armor_special_integrity"},
	experimentalMin = {0, 0, 7, 1000, 1, 30000, 25, 22, 30, 1, 24, 1, 10},
	experimentalMax = {0, 0, 8, 1000, 40, 50000, 15, 13, 18, 1, 24, 10, 10},
	experimentalPrecision = {0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 10, 0},
	experimentalCombineType = {0, 0, 4, 1, 1, 1, 1, 1, 1, 4, 4, 4, 1},
}

ObjectTemplates:addTemplate(object_revelation_tangible_wearables_armor_infiltrator_armor_infiltrator_s01_gloves, "object/tangible/wearables/armor/infiltrator/armor_infiltrator_s01_gloves.iff")
