--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_loot_factional_schematic_imperial_assault_trooper_chest_plate_schematic = object_revelation_tangible_loot_factional_schematic_shared_imperial_assault_trooper_chest_plate_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_armorsmith_master",
	targetDraftSchematic = "object/draft_schematic/armor/armor_appearance_assault_trooper_chest.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_factional_schematic_imperial_assault_trooper_chest_plate_schematic, "object/tangible/loot/factional_schematic/imperial_assault_trooper_chest_plate_schematic.iff")
