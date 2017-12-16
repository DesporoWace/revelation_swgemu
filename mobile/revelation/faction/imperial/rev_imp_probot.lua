rev_imp_probot = Creature:new {
	objectName = "",
	customName = "Assault Probot",
	socialGroup = "imperial",
	faction = "imperial",
	level = 80,
	chanceHit = 15,
	damageMin = 750,
	damageMax = 950,
	baseXp = 3005,
	baseHAM = 16300,
	baseHAMmax = 19100,
	armor = 1,
	resists = {55,55,55,35,35,35,35,35,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT + AGGRESSIVE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,
	scale = 1.05,

  templates = {"object/mobile/probot.iff"},
  lootGroups = {},
  conversationTemplate = "",
  defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
  defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(rev_imp_probot, "rev_imp_probot")