rev_hd_borvos_guard = Creature:new {
	objectName = "",
	customName = "Borvo's Guard",
	socialGroup = "jawa",
	faction = "jawa",
	level = 110,
	chanceHit = 95,
	damageMin = 1920,
	damageMax = 2650,
	baseXp = 24057,
	baseHAM = 145000,
	baseHAMmax = 162000,
	armor = 2,
	resists = {55,55,60,55,55,70,55,55,35},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_borvos_soldier.iff"},
	lootGroups = {},
	weapons = {"czerka_melee_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(rev_hd_borvos_guard, "rev_hd_borvos_guard")