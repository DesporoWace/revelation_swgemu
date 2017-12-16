--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_wearables_armor_stormtrooper_armor_stormtrooper_helmet_quest = object_revelation_tangible_wearables_armor_stormtrooper_shared_armor_stormtrooper_helmet_quest:new {
	templateType = ARMOROBJECT,

	faction = "Imperial",

	playerRaces = { 	"object/creature/player/human_male.iff",
				"object/creature/player/human_female.iff",
				"object/creature/player/zabrak_male.iff",
				"object/creature/player/zabrak_female.iff",
				"object/mobile/vendor/human_female.iff",
				"object/mobile/vendor/human_male.iff",
				"object/mobile/vendor/zabrak_female.iff",
				"object/mobile/vendor/zabrak_male.iff" },
	
	-- Damage types in WeaponObject
	vulnerability = ACID + STUN + LIGHTSABER,

	-- These are default Blue Frog stats
	healthEncumbrance = 15,
	actionEncumbrance = 16,
	mindEncumbrance = 225,

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

ObjectTemplates:addTemplate(object_revelation_tangible_wearables_armor_stormtrooper_armor_stormtrooper_helmet_quest, "object/tangible/wearables/armor/stormtrooper/armor_stormtrooper_helmet_quest.iff")
