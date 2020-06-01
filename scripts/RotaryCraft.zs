//Import
import minetweaker.item.IItemStack;
import mods.nei.NEI.hide;



//Arrays for removal
var toRemove = [<ElectriCraft:electricraft_item_crystal:6>,
                <ElectriCraft:electricraft_item_placer:14>,
                <RotaryCraft:rotarycraft_item_misccraft:0>,
                <RotaryCraft:rotarycraft_item_misccraft:1>,
                <RotaryCraft:rotarycraft_item_misccraft:3>,
                <RotaryCraft:rotarycraft_item_borecraft:1>,
                <RotaryCraft:rotarycraft_item_misccraft:7>,
                <ReactorCraft:reactorcraft_item_crafting:7>,
                <ReactorCraft:reactorcraft_item_crafting:18>,
                <RotaryCraft:rotarycraft_item_misccraft:11>,
                <ReactorCraft:reactorcraft_item_crafting:15>,
                <ReactorCraft:reactorcraft_block_mats>,
                <ReactorCraft:reactorcraft_block_generatormulti>,
                //Remove Last traces of RoC modingots
                <ReactorCraft:reactorcraft_item_raw:5>,
                <ReactorCraft:reactorcraft_item_raw:6>,
                <ReactorCraft:reactorcraft_item_fluorite:6>
                ] as IItemStack[];
//Remove all that needs removing
for item in toRemove{
    recipes.remove(item);
}

//Array for RotaryCraft and ReactorCraft modingots to remove from NEI
var toHide = [//Modingots that are unified to their respective mods
              <RotaryCraft:rotarycraft_item_modingots:49>,
              <RotaryCraft:rotarycraft_item_modingots:9>,
              <RotaryCraft:rotarycraft_item_modingots:10>,
              <RotaryCraft:rotarycraft_item_modingots:68>,
              <RotaryCraft:rotarycraft_item_modingots:65>,
              <RotaryCraft:rotarycraft_item_modingots:57>,
              <RotaryCraft:rotarycraft_item_modingots:52>,
              <RotaryCraft:rotarycraft_item_modingots:56>,
              <RotaryCraft:rotarycraft_item_modingots:11>,
              //RotaryCraft items with no textures from shafts change
              <RotaryCraft:rotarycraft_item_shaftcraft:2>,
              <RotaryCraft:rotarycraft_item_shaftcraft:4>,
              <RotaryCraft:rotarycraft_item_shaftcraft:5>,
              <RotaryCraft:rotarycraft_item_shaftcraft:6>,
              <RotaryCraft:rotarycraft_item_shaftcraft:7>,
              <RotaryCraft:rotarycraft_item_shaftcraft:8>,
              <RotaryCraft:rotarycraft_item_gearcraft:16>,
              <RotaryCraft:rotarycraft_item_enginecraft:9>,
              <RotaryCraft:rotarycraft_item_enginecraft:10>,
              <RotaryCraft:rotarycraft_item_enginecraft:11>,
              <RotaryCraft:rotarycraft_item_enginecraft:12>,
              <RotaryCraft:rotarycraft_item_enginecraft:14>,
              <RotaryCraft:rotarycraft_item_enginecraft:16>,
              //Useless 'Rutile' ingot
              <RotaryCraft:rotarycraft_item_modingots:79>
              ] as IItemStack[];
              
//Hide said item
for item in toHide{
    hide(item);
}


//RotaryCraft
//New component recipes
recipes.addShapeless(<RotaryCraft:rotarycraft_item_gearcraft:7>, [<RotaryCraft:rotarycraft_item_gearcraft:7>]);
recipes.addShaped(<RotaryCraft:rotarycraft_item_upgrade:8>,
 [[<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_compacts:6>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<RotaryCraft:rotarycraft_item_compacts:5>, <ore:ingotVibrantAlloy>, <RotaryCraft:rotarycraft_item_compacts:5>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_compacts:6>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<RotaryCraft:rotarycraft_item_misccraft:0>,
 [[<RotaryCraft:rotarycraft_item_compacts:5>, <RotaryCraft:rotarycraft_item_compacts:5>, <RotaryCraft:rotarycraft_item_compacts:5>],
 [<ReactorCraft:reactorcraft_item_canister:9>, <ReactorCraft:reactorcraft_item_canister:9>, <RotaryCraft:rotarycraft_block_blastglass>], 
 [<RotaryCraft:rotarycraft_item_compacts:5>, <RotaryCraft:rotarycraft_item_compacts:5>, <RotaryCraft:rotarycraft_item_compacts:5>]]);
recipes.addShaped(<RotaryCraft:rotarycraft_item_misccraft:1>, 
 [[null, <RotaryCraft:rotarycraft_block_blastpane>, null],
 [<RotaryCraft:rotarycraft_block_blastpane>, <EnderIO:blockFusedQuartz:2>, <RotaryCraft:rotarycraft_block_blastpane>],
 [null, <RotaryCraft:rotarycraft_block_blastpane>, null]]);
recipes.addShaped(<RotaryCraft:rotarycraft_item_misccraft:3>,
 [[<RotaryCraft:rotarycraft_item_compacts:5>, <minecraft:glowstone>, <minecraft:blaze_rod>],
 [<minecraft:glowstone>, <ReactorCraft:reactorcraft_item_canister:9>, <RotaryCraft:rotarycraft_block_blastglass>], 
 [<RotaryCraft:rotarycraft_item_compacts:5>, <minecraft:glowstone>, <minecraft:blaze_rod>]]); 
recipes.addShaped(<RotaryCraft:rotarycraft_item_misccraft:4> * 2,
 [[<ore:ingotPlatinum>, <RotaryCraft:rotarycraft_item_enginecraft:8>, <ore:ingotPlatinum>],
 [<ore:ingotHSLA>, <ore:ingotHSLA>, <ore:ingotHSLA>]]);
recipes.addShaped(<RotaryCraft:rotarycraft_item_misccraft:7>,
 [[<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>],
 [<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>]]);
recipes.addShaped(<RotaryCraft:rotarycraft_item_misccraft:11>,
 [[<ore:ingotHSLA>, <Eln:Eln.SixNode:6980>, <ore:ingotHSLA>],
 [<RotaryCraft:rotarycraft_item_borecraft:4>, <RotaryCraft:rotarycraft_item_borecraft:2>, <RotaryCraft:rotarycraft_item_borecraft:4>],
 [<ore:ingotHSLA>, <RotaryCraft:rotarycraft_item_misccraft:8>, <ore:ingotHSLA>]]);
//Annealed copper recipes
recipes.addShaped(<RotaryCraft:rotarycraft_item_misccraft:2> * 4,
 [[<minecraft:redstone>, <RotaryCraft:rotarycraft_item_compacts:10>, <minecraft:redstone>],
 [<customitems:annealedcopper>, <customitems:annealedcopper>, <customitems:annealedcopper>],
 [<ore:ingotHSLA>, <ore:ingotHSLA>, <ore:ingotHSLA>]]);
recipes.addShaped(<RotaryCraft:rotarycraft_item_borecraft:4> * 4,
 [[<ore:ingotHSLA>, <customitems:annealedcopper>, <ore:ingotHSLA>],
 [<minecraft:redstone>, <RotaryCraft:rotarycraft_item_compacts:10>, <minecraft:redstone>],
 [<customitems:annealedcopper>, <ore:ingotHSLA>, <customitems:annealedcopper>]]);
recipes.addShaped(<RotaryCraft:rotarycraft_item_enginecraft:15>,
 [[<customitems:annealedcopper>, null, <customitems:annealedcopper>],
 [<ore:ingotHSLA>, <minecraft:redstone>, <ore:ingotHSLA>],
 [<ore:ingotHSLA>, <ore:ingotHSLA>, <ore:ingotHSLA>]]);
recipes.addShaped(<RotaryCraft:rotarycraft_item_enginecraft:8>, 
 [[<customitems:annealedcopper>, <customitems:annealedcopper>, <customitems:annealedcopper>],
 [<customitems:annealedcopper>, <ore:ingotHSLA>, <customitems:annealedcopper>],
 [<customitems:annealedcopper>, <customitems:annealedcopper>, <customitems:annealedcopper>]]);
//New dirt recipe to remove sand dependence
recipes.addShaped(<minecraft:dirt> * 2, 
 [[<RotaryCraft:rotarycraft_item_powders:13>, <RotaryCraft:rotarycraft_item_powders:13>],
 [<RotaryCraft:rotarycraft_item_powders:13>, <RotaryCraft:rotarycraft_item_powders:13>]]);
//Add in voidmetal Railgun ammo
recipes.addShaped(<RotaryCraft:rotarycraft_item_voidrail> * 16, 
 [[<ore:blockIridium>, <ChromatiCraft:chromaticraft_item_crafting:30>, null], 
 [<ChromatiCraft:chromaticraft_item_crafting:30>, <ChromatiCraft:chromaticraft_item_crafting>, <ChromatiCraft:chromaticraft_item_crafting:30>],
 [null, <ChromatiCraft:chromaticraft_item_crafting:30>, <ore:blockIridium>]]);

//ElectriCraft
//Wireless RF Pads
recipes.addShaped(<RotaryCraft:rotarycraft_item_borecraft:1>,
 [[<ore:ingotHSLA>, <minecraft:obsidian>, <Eln:Eln.sharedItem:4420>],
 [<minecraft:obsidian>, <Eln:Eln.sharedItem:4420>, <ReactorCraft:reactorcraft_item_crafting:17>],
 [<Eln:Eln.sharedItem:4420>, <ReactorCraft:reactorcraft_item_crafting:17>, <ReactorCraft:reactorcraft_item_crafting:17>]]);
recipes.addShaped(<ElectriCraft:electricraft_item_placer:14>.withTag({tier: 0}),
 [[<RotaryCraft:rotarycraft_item_shaftcraft:1>, <minecraft:ender_pearl>, <RotaryCraft:rotarycraft_item_shaftcraft:1>],
 [<ore:blockGlassColorless>, <ore:dustRedstone>, <ore:blockGlassColorless>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_compacts:10>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<ElectriCraft:electricraft_item_placer:14>.withTag({tier: 1}),
 [[<RotaryCraft:rotarycraft_item_shaftcraft:1>, <minecraft:ender_pearl>, <RotaryCraft:rotarycraft_item_shaftcraft:1>],
 [<ore:blockGlassColorless>, <ore:ingotGold>, <ore:blockGlassColorless>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_compacts:10>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<ElectriCraft:electricraft_item_placer:14>.withTag({tier: 2}),
 [[<RotaryCraft:rotarycraft_item_shaftcraft:1>, <minecraft:ender_pearl>, <RotaryCraft:rotarycraft_item_shaftcraft:1>],
 [<ore:blockGlassColorless>, <customitems:annealedcopper>, <ore:blockGlassColorless>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_compacts:10>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<ElectriCraft:electricraft_item_placer:14>.withTag({tier: 3}),
 [[<RotaryCraft:rotarycraft_item_shaftcraft:1>, <minecraft:ender_pearl>, <RotaryCraft:rotarycraft_item_shaftcraft:1>],
 [<RotaryCraft:rotarycraft_block_blastglass>, <RotaryCraft:rotarycraft_item_compacts:6>, <RotaryCraft:rotarycraft_block_blastglass>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_compacts:10>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<ElectriCraft:electricraft_item_placer:14>.withTag({tier: 4}),
 [[<RotaryCraft:rotarycraft_item_shaftcraft:1>, <minecraft:ender_pearl>, <RotaryCraft:rotarycraft_item_shaftcraft:1>],
 [<RotaryCraft:rotarycraft_block_blastglass>, <ore:ingotEnderium>, <RotaryCraft:rotarycraft_block_blastglass>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_compacts:10>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);

//ReactorCraft
//Radiation-shielding fabric
recipes.addShaped(<RotaryCraft:rotarycraft_item_borecraft:9> * 12,
 [[<ore:sheetRubber>, <ore:sheetRubber>, <ore:sheetRubber>],
 [<ore:sheetRubber>, <ore:ingotHSLA>, <ore:sheetRubber>],
 [<ore:sheetRubber>, <ore:sheetRubber>, <ore:sheetRubber>]]);
recipes.addShaped(<ReactorCraft:reactorcraft_item_crafting:15>,
 [[<ore:sheetRubber>, <ReactorCraft:reactorcraft_item_oldpellet>, <ore:sheetRubber>],
 [<ore:sheetRubber>, <ReactorCraft:reactorcraft_item_oldpellet>, <ore:sheetRubber>],
 [<ore:sheetRubber>, <ReactorCraft:reactorcraft_item_oldpellet>, <ore:sheetRubber>]]);
recipes.addShaped(<ReactorCraft:reactorcraft_item_crafting:15> * 2,
 [[<ore:sheetRubber>, <ore:ingotLead>, <ore:sheetRubber>],
 [<ore:sheetRubber>, <ore:ingotLead>, <ore:sheetRubber>],
 [<ore:sheetRubber>, <ore:ingotLead>, <ore:sheetRubber>]]);
recipes.addShaped(<ReactorCraft:reactorcraft_item_crafting:15> * 3,
 [[<ore:sheetRubber>, <ReactorCraft:reactorcraft_item_depleted>, <ore:sheetRubber>],
 [<ore:sheetRubber>, <ReactorCraft:reactorcraft_item_depleted>, <ore:sheetRubber>],
 [<ore:sheetRubber>, <ReactorCraft:reactorcraft_item_depleted>, <ore:sheetRubber>]]);
//Neutron absorbers
recipes.addShaped(<ReactorCraft:reactorcraft_item_placer:32>, 
 [[<ReactorCraft:reactorcraft_item_crafting:13>, <ReactorCraft:reactorcraft_item_crafting:13>, <ReactorCraft:reactorcraft_item_crafting:13>],
 [<ReactorCraft:reactorcraft_item_crafting:13>, <ore:blockLead>, <ReactorCraft:reactorcraft_item_crafting:13>],
 [<ReactorCraft:reactorcraft_item_crafting:13>, <ReactorCraft:reactorcraft_item_crafting:13>, <ReactorCraft:reactorcraft_item_crafting:13>]]);
//Readd block-> item recipes
recipes.addShapeless(<ReactorCraft:reactorcraft_item_raw:5> * 9, [<ReactorCraft:reactorcraft_block_mats:2>]);
recipes.addShapeless(<ReactorCraft:reactorcraft_item_raw:6> * 9, [<ReactorCraft:reactorcraft_block_mats:4>]);
recipes.addShapeless(<ReactorCraft:reactorcraft_item_fluorite:6> * 9, [<ReactorCraft:reactorcraft_block_fluorite:6>]);
//New coolant pack recipe
recipes.addShaped(<ReactorCraft:reactorcraft_item_crafting:7>,
 [[<ore:plateTitanium>, <ore:paneGlass>, <ore:plateTitanium>],
 [<ore:ingotHSLA>, null, <ore:ingotHSLA>],
 [<ore:plateTitanium>, <RotaryCraft:rotarycraft_item_machine:17>, <ore:plateTitanium>]]);
//Turbine Generator housing recipes
recipes.addShaped(<ReactorCraft:reactorcraft_block_generatormulti:1>,
 [[<customitems:annealedcopperwire>, <customitems:annealedcopperwire>, <customitems:annealedcopperwire>],
 [<customitems:annealedcopperwire>, <ore:ingotHSLA>, <customitems:annealedcopperwire>],
 [<customitems:annealedcopperwire>, <customitems:annealedcopperwire>, <customitems:annealedcopperwire>]]);
recipes.addShaped(<ReactorCraft:reactorcraft_block_generatormulti:2>,
 [[<ore:ingotHSLA>, <ore:ingotHSLA>, <ore:ingotHSLA>],
 [<customitems:annealedcopperwire>, <customitems:annealedcopperwire>, <customitems:annealedcopperwire>],
 [<ore:ingotHSLA>, <ore:ingotHSLA>, <ore:ingotHSLA>]]);
//Turbine Generator rotor core recipe
recipes.addShaped(<ReactorCraft:reactorcraft_block_generatormulti>,
 [[<RotaryCraft:rotarycraft_item_compacts:12>, <RotaryCraft:rotarycraft_item_gearcraft:112>, <RotaryCraft:rotarycraft_item_compacts:12>],
 [<RotaryCraft:rotarycraft_item_gearcraft:112>, <RotaryCraft:rotarycraft_item_gearcraft:112>, <RotaryCraft:rotarycraft_item_gearcraft:112>],
 [<RotaryCraft:rotarycraft_item_compacts:12>, <RotaryCraft:rotarycraft_item_gearcraft:112>, <RotaryCraft:rotarycraft_item_compacts:12>]]);
//A seperate sodium cycler recipe so it's available a little before fission reactors are most of the time
recipes.addShaped(<ReactorCraft:reactorcraft_item_placer:42>,
 [[<ore:ingotIndium>, <RotaryCraft:rotarycraft_item_shaftcraft>, <ore:ingotIndium>],
 [<RotaryCraft:rotarycraft_item_compacts:5>, <RotaryCraft:rotarycraft_item_enginecraft:7>, <RotaryCraft:rotarycraft_item_compacts:5>],
 [<ore:ingotTitanium>, <RotaryCraft:rotarycraft_item_shaftcraft>, <ore:ingotTitanium>]]);
