--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_wearables_armor_marine_armor_marine_boots_gcw = object_revelation_tangible_wearables_armor_marine_shared_armor_marine_boots_gcw:new {
	templateType = ARMOROBJECT,

	faction = "Rebel",

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
				"object/creature/player/twilek_male.iff",
				"object/creature/player/twilek_female.iff",
				"object/creature/player/zabrak_male.iff",
				"object/creature/player/zabrak_female.iff",
				"object/mobile/vendor/aqualish_female.iff",
				"object/mobile/vendor/aqualish_male.iff",
				"object/mobile/vendor/bith_female.iff",
				"object/mobile/vendor/bith_male.iff",
				"object/mobile/vendor/bothan_female.iff",
				"object/mobile/vendor/bothan_male.iff",
				"object/mobile/vendor/devaronian_male.iff",
				"object/mobile/vendor/gran_male.iff",
				"object/mobile/vendor/human_female.iff",
				"object/mobile/vendor/human_male.iff",
				"object/mobile/vendor/ishi_tib_male.iff",
				"object/mobile/vendor/moncal_female.iff",
				"object/mobile/vendor/moncal_male.iff",
				"object/mobile/vendor/nikto_male.iff",
				"object/mobile/vendor/quarren_male.iff",
				"object/mobile/vendor/rodian_female.iff",
				"object/mobile/vendor/rodian_male.iff",
				"object/mobile/vendor/sullustan_female.iff",
				"object/mobile/vendor/sullustan_male.iff",
				"object/mobile/vendor/twilek_female.iff",
				"object/mobile/vendor/twilek_male.iff",
				"object/mobile/vendor/weequay_male.iff",
				"object/mobile/vendor/zabrak_female.iff",
				"object/mobile/vendor/zabrak_male.iff" },
	
	-- Damage types in WeaponObject
	vulnerability = ACID + STUN + LIGHTSABER,

	-- These are default Blue Frog stats
	healthEncumbrance = 15,
	actionEncumbrance = 33,
	mindEncumbrance = 19,

	-- LIGHT, MEDIUM, HEAVY
	rating = LIGHT,
	
	maxCondition = 45000,
	
	kinetic = 30,
	energy = 30,
	electricity = 30,
	stun = 0,
	blast = 30,
	heat = 30,
	cold = 30,
	acid = 0,
	lightSaber = 0
}

ObjectTemplates:addTemplate(object_revelation_tangible_wearables_armor_marine_armor_marine_boots_gcw, "object/tangible/wearables/armor/marine/armor_marine_boots_gcw.iff")
