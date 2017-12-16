rev_pvpEvent_mara_jade = Creature:new {
	objectName = "@mob/creature_names:mara_jade",
	socialGroup = "imperial",
	faction = "imperial",
	level = 150,
	chanceHit = 30,
	damageMin = 2300,
	damageMax = 2500,
	baseXp = 100000,
	baseHAM = 600000,
	baseHAMmax = 750000,
	armor = 1,
	resists = {40,40,40,40,20,20,40,40,40},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + AGGRESSIVE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/mara_jade.iff"},
	lootGroups = {},
	outfit = "mara_jade_outfit",
	weapons = {"dark_jedi_weapons_gen3"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(rev_pvpEvent_mara_jade, "rev_pvpEvent_mara_jade")