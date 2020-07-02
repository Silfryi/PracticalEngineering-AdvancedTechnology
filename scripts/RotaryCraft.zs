//Import
import minetweaker.item.IItemStack;
import mods.nei.NEI.hide;


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
    recipes.remove(item);
    hide(item);
}


//RotaryCraft
//New component recipes
//Shaft core -> shaft core recipe
recipes.addShapeless(<RotaryCraft:rotarycraft_item_gearcraft:7>, [<RotaryCraft:rotarycraft_item_gearcraft:7>]);
//Make dynamo flux upgrade easier
recipes.addShaped(<RotaryCraft:rotarycraft_item_upgrade:8>,
 [[<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_compacts:6>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<RotaryCraft:rotarycraft_item_compacts:5>, <ore:ingotVibrantAlloy>, <RotaryCraft:rotarycraft_item_compacts:5>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_compacts:6>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
//Linear Induction Motor
recipes.addShaped(<RotaryCraft:rotarycraft_item_misccraft:4> * 2,
 [[<ore:ingotPlatinum>, <RotaryCraft:rotarycraft_item_enginecraft:8>, <ore:ingotPlatinum>],
 [<ore:ingotHSLA>, <ore:ingotHSLA>, <ore:ingotHSLA>]]);
//Mirror
recipes.remove(<RotaryCraft:rotarycraft_item_misccraft:7>);
recipes.addShaped(<RotaryCraft:rotarycraft_item_misccraft:7>,
 [[<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>],
 [<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>]]);
//Turret aiming unit
recipes.remove(<RotaryCraft:rotarycraft_item_misccraft:11>);
recipes.addShaped(<RotaryCraft:rotarycraft_item_misccraft:11>,
 [[<ore:ingotHSLA>, <Eln:Eln.SixNode:6980>, <ore:ingotHSLA>],
 [<RotaryCraft:rotarycraft_item_borecraft:4>, <RotaryCraft:rotarycraft_item_borecraft:2>, <RotaryCraft:rotarycraft_item_borecraft:4>],
 [<ore:ingotHSLA>, <RotaryCraft:rotarycraft_item_misccraft:8>, <ore:ingotHSLA>]]);
//Rubber sheet belt recipe
recipes.addShaped(<RotaryCraft:rotarycraft_item_borecraft:9> * 12,
 [[<ore:sheetRubber>, <ore:sheetRubber>, <ore:sheetRubber>],
 [<ore:sheetRubber>, <ore:ingotHSLA>, <ore:sheetRubber>],
 [<ore:sheetRubber>, <ore:sheetRubber>, <ore:sheetRubber>]]);
//Pressure head recipe
recipes.remove(<RotaryCraft:rotarycraft_item_borecraft:1>);
recipes.addShaped(<RotaryCraft:rotarycraft_item_borecraft:1>,
 [[<ore:ingotHSLA>, <minecraft:obsidian>, <Eln:Eln.sharedItem:4420>],
 [<minecraft:obsidian>, <Eln:Eln.sharedItem:4420>, <ReactorCraft:reactorcraft_item_crafting:17>],
 [<Eln:Eln.sharedItem:4420>, <ReactorCraft:reactorcraft_item_crafting:17>, <ReactorCraft:reactorcraft_item_crafting:17>]]);
//Annealed copper crafting component recipes
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
 [[<ore:ingotIridium>, <ore:dustObsidian>, null], 
 [<ore:dustObsidian>, <ore:pearlEnder>, <ore:dustObsidian>],
 [null, <ore:dustObsidian>, <ore:blockIridium>]]);

//Make heat ray component recipes rely less on mob drops
recipes.remove(<RotaryCraft:rotarycraft_item_misccraft:0>);
recipes.remove(<RotaryCraft:rotarycraft_item_misccraft:1>);
recipes.remove(<RotaryCraft:rotarycraft_item_misccraft:3>);
recipes.addShaped(<RotaryCraft:rotarycraft_item_misccraft:0>,
 [[<RotaryCraft:rotarycraft_item_compacts:5>, <ReactorCraft:reactorcraft_item_crafting:5>, <RotaryCraft:rotarycraft_item_compacts:5>],
 [<ReactorCraft:reactorcraft_item_canister:9>, <ReactorCraft:reactorcraft_item_canister:9>, <RotaryCraft:rotarycraft_item_misccraft:1>], 
 [<RotaryCraft:rotarycraft_item_compacts:5>, <ReactorCraft:reactorcraft_item_crafting:5>, <RotaryCraft:rotarycraft_item_compacts:5>]]);
recipes.addShaped(<RotaryCraft:rotarycraft_item_misccraft:1>, 
 [[null, <RotaryCraft:rotarycraft_block_blastpane>, null],
 [<RotaryCraft:rotarycraft_block_blastpane>, <EnderIO:blockFusedQuartz:2>, <RotaryCraft:rotarycraft_block_blastpane>],
 [null, <RotaryCraft:rotarycraft_block_blastpane>, null]]);
recipes.addShaped(<RotaryCraft:rotarycraft_item_misccraft:3>,
 [[<RotaryCraft:rotarycraft_item_compacts:5>, <ReactorCraft:reactorcraft_item_crafting:5>, <RotaryCraft:rotarycraft_item_compacts:5>],
 [<minecraft:glowstone>, <ReactorCraft:reactorcraft_item_canister:9>, <RotaryCraft:rotarycraft_block_blastglass>], 
 [<RotaryCraft:rotarycraft_item_compacts:5>, <ReactorCraft:reactorcraft_item_crafting:5>, <RotaryCraft:rotarycraft_item_compacts:5>]]);
 
 
//ElectriCraft
//Remove RF Crystal recipe
recipes.remove(<ElectriCraft:electricraft_item_crystal:6>);

//Wireless RF Pads
recipes.remove(<ElectriCraft:electricraft_item_placer:14>);
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
recipes.remove(<ReactorCraft:reactorcraft_item_crafting:15>);
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

//Remove concrete recipe in favor of Immersive Engineering recipe
recipes.remove(<ReactorCraft:reactorcraft_block_mats>);

//Remove uranium pellet recipes so as to force blast furnace recipe
recipes.remove(<ReactorCraft:reactorcraft_item_fuel:0>);
recipes.remove(<ReactorCraft:reactorcraft_item_depleted:0>);

//Neutron absorbers
recipes.addShaped(<ReactorCraft:reactorcraft_item_placer:32>, 
 [[<ReactorCraft:reactorcraft_item_crafting:13>, <ReactorCraft:reactorcraft_item_crafting:13>, <ReactorCraft:reactorcraft_item_crafting:13>],
 [<ReactorCraft:reactorcraft_item_crafting:13>, <ore:blockLead>, <ReactorCraft:reactorcraft_item_crafting:13>],
 [<ReactorCraft:reactorcraft_item_crafting:13>, <ReactorCraft:reactorcraft_item_crafting:13>, <ReactorCraft:reactorcraft_item_crafting:13>]]);

//ReactorCraft modingots unification
recipes.remove(<ReactorCraft:reactorcraft_item_raw:5>);
recipes.remove(<ReactorCraft:reactorcraft_item_raw:6>);
recipes.remove(<ReactorCraft:reactorcraft_item_fluorite:6>);
recipes.addShapeless(<ReactorCraft:reactorcraft_item_raw:5> * 9, [<ReactorCraft:reactorcraft_block_mats:2>]);
recipes.addShapeless(<ReactorCraft:reactorcraft_item_raw:6> * 9, [<ReactorCraft:reactorcraft_block_mats:4>]);
recipes.addShapeless(<ReactorCraft:reactorcraft_item_fluorite:6> * 9, [<ReactorCraft:reactorcraft_block_fluorite:6>]);

//New coolant pack recipe
recipes.remove(<ReactorCraft:reactorcraft_item_crafting:7>);
recipes.addShaped(<ReactorCraft:reactorcraft_item_crafting:7>,
 [[<ore:plateTitanium>, <ore:paneGlass>, <ore:plateTitanium>],
 [<ore:ingotHSLA>, null, <ore:ingotHSLA>],
 [<ore:plateTitanium>, <RotaryCraft:rotarycraft_item_machine:17>, <ore:plateTitanium>]]);
 
//Turbine-related recipes
//Remove steam turbine core recipe
recipes.remove(<ReactorCraft:reactorcraft_item_crafting:18>);
//Turbine generator recipes
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
recipes.remove(<ReactorCraft:reactorcraft_block_generatormulti>);
recipes.addShaped(<ReactorCraft:reactorcraft_block_generatormulti>,
 [[<RotaryCraft:rotarycraft_item_compacts:12>, <RotaryCraft:rotarycraft_item_gearcraft:112>, <RotaryCraft:rotarycraft_item_compacts:12>],
 [<RotaryCraft:rotarycraft_item_gearcraft:112>, <RotaryCraft:rotarycraft_item_gearcraft:112>, <RotaryCraft:rotarycraft_item_gearcraft:112>],
 [<RotaryCraft:rotarycraft_item_compacts:12>, <RotaryCraft:rotarycraft_item_gearcraft:112>, <RotaryCraft:rotarycraft_item_compacts:12>]]);
 
//A seperate sodium cycler recipe so it's available a little before fission reactors are most of the time
recipes.addShaped(<ReactorCraft:reactorcraft_item_placer:42>,
 [[<ore:ingotIndium>, <RotaryCraft:rotarycraft_item_shaftcraft>, <ore:ingotIndium>],
 [<RotaryCraft:rotarycraft_item_compacts:5>, <RotaryCraft:rotarycraft_item_enginecraft:7>, <RotaryCraft:rotarycraft_item_compacts:5>],
 [<ore:ingotTitanium>, <RotaryCraft:rotarycraft_item_shaftcraft>, <ore:ingotTitanium>]]);
