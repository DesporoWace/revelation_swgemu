--Copyright (C) 2015 <www.revelationonline.net> Author genesis@revelationonline.net





object_revelation_tangible_loot_loot_schematic_bespin_shelves_loot_schem = object_revelation_tangible_loot_loot_schematic_shared_bespin_shelves_loot_schem:new {
	customName = "Bespin Shelves",	
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = {"cpp", "LootSchematicMenuComponent"},
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/furniture/bespin_shelves.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_revelation_tangible_loot_loot_schematic_bespin_shelves_loot_schem, "object/tangible/loot/loot_schematic/bespin_shelves_schem.iff")
