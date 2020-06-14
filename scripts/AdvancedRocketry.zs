//Import
import mods.nei.NEI.hide;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;


//Arrays For Removal and Hiding
var toHide = [//Machine controllers & machine blocks
              <advancedRocketry:tile.blockHandPress>,
              <advancedRocketry:tile.electrolyser>,
              <advancedRocketry:utilBlock>,
              <advancedRocketry:tile.electricArcFurnace>,
              //Generators
              <libVulpes:tile.coalGenerator>,
              <advancedRocketry:tile.solarGenerator>,
              //Deprecated pipes
              <advancedRocketry:tile.energyPipe>,
              <advancedRocketry:tile.liquidPipe>,
              //Items & blocks usurped by RoC variants
              <advancedRocketry:tile.oxygenFluidBlock>,
              <advancedRocketry:item.bucketOxygen>,
              <advancedRocketry:sawBlade>,
              <libVulpes:libVulpesproductfan:6>,
              //Technical blocks and items
              <advancedRocketry:advancedRocketryproductcrystal>,
              <advancedRocketry:advancedRocketryproductboule>,
              <advancedRocketry:advancedRocketryproductfan>,
              <libVulpes:tile.creativePowerBattery>,
              <advancedRocketry:tile.smallAirlockDoor>,
              <advancedRocketry:tile.astroBed>,
              <advancedRocketry:item.basicLaserGun>
              ] as IItemStack[];

var toRemove = [//Machine parts
                <libVulpes:blockStructureBlock>,
                <libVulpes:tile.advStructureMachine>,
                <libVulpes:tile.motor>,
                <libVulpes:tile.advancedMotor>,
                <libVulpes:tile.enhancedMotor>,
                <libVulpes:tile.eliteMotor>,
                <advancedRocketry:tile.sawBlade>,
                <advancedRocketry:utilBlock>,
                //Machine controllers
                <advancedRocketry:precisionassemblingmachine>,
                <advancedRocketry:crystallizer>,
                <advancedRocketry:cuttingMachine>,
                <advancedRocketry:tile.blockHandPress>,
                <advancedRocketry:tile.electrolyser>,
                <advancedRocketry:tile.railgun>,
                <advancedRocketry:tile.warpCore>,
                <advancedRocketry:tile.electricArcFurnace>,
                <advancedRocketry:tile.atmosphereTerraformer>,
                <advancedRocketry:tile.biomeScanner>,
                <advancedRocketry:tile.planetanalyser>,
                //Rocket parts
                <advancedRocketry:rocketmotor>,
                <advancedRocketry:tile.advRocket>,
                <advancedRocketry:fuelTank>,
                <advancedRocketry:tile.loader:1>,
                <advancedRocketry:tile.drill>,
                <advancedRocketry:tile.guidanceComputer>,
                //Generators
                <libVulpes:tile.coalGenerator>,
                <advancedRocketry:tile.solarGenerator>,
                //Single-block machines
                <advancedRocketry:fuelingStation>,
                <advancedRocketry:tile.oxygenCharger>,
                <advancedRocketry:tile.stationmonitor>,
                <advancedRocketry:tile.oxygenVent>,
                <advancedRocketry:tile.scrubber>,
                <advancedRocketry:tile.atmosphereDetector>,
                <advancedRocketry:tile.suitWorkStation>,
                <advancedRocketry:blockMonitoringStation>,
                <advancedRocketry:tile.satelliteMonitor>,
                <advancedRocketry:rocketBuilder>,
                //Circuits
                <advancedRocketry:circuitIC:3>,
                <advancedRocketry:circuitIC:4>,
                <advancedRocketry:circuitIC:5>,
                <advancedRocketry:item.planetIdChip>,
                <advancedRocketry:item.satelliteIdChip>,
                <advancedRocketry:item.asteroidChip>,
                <advancedRocketry:item.stationChip>,
                //Materials
                <ore:stickIron>,
                <ore:stickCopper>,
                <ore:stickSteel>,
                <ore:stickTitanium>,
                <ore:stickIridium>,
                <ore:stickTitaniumAluminide>,
                <ore:stickTitaniumIridium>,
                //Space suit
                <advancedRocketry:item.spaceHelmet>,
                <advancedRocketry:item.spaceChest>,
                <advancedRocketry:item.spaceLeggings>,
                <advancedRocketry:item.spaceBoots>,
                <advancedRocketry:item.jetPack>,
                //Satellite bits
                <advancedRocketry:satellitePrimaryFunction:2>,
                <libVulpes:rfBattery>,
                //Misc blocks
                <advancedRocketry:structureTower>,
                <advancedRocketry:tile.pipeSeal>,
                <advancedRocketry:item.smallAirlock>,
                <advancedRocketry:tile.pressurizedTank>,
                <advancedRocketry:tile.dockingPad>,
                <advancedRocketry:tile.concrete>,
                <advancedRocketry:tile.oxygenFluidBlock>,
			    <advancedRocketry:item.bucketOxygen>,
                //Misc items
                <advancedRocketry:oreScanner>,
                <advancedRocketry:miscpart:1>,
				<libVulpes:libVulpesproductfan:6>,
				<advancedRocketry:sawBlade>,
				] as IIngredient[];
				
//Hide what we don't need from NEI
for item in toHide{
    hide(item);
}

//Remove all that needs removing
for item in toRemove{
    recipes.remove(item);
}



//Shaped Recipes, Advanced Rocketry Specific
//Suit Bits
recipes.addShaped(<advancedRocketry:item.spaceHelmet>, 
 [[<RotaryCraft:rotarycraft_item_compacts:11>, <ore:sheetTitanium>,<RotaryCraft:rotarycraft_item_compacts:11>],
 [<ore:sheetTitanium>, <RotaryCraft:rotarycraft_block_blastpane>, <ore:sheetTitanium>],
 [<ReactorCraft:reactorcraft_block_heatermulti:1>, <ReactorCraft:reactorcraft_item_hazhelmet>, <ReactorCraft:reactorcraft_block_heatermulti:1>]]);
recipes.addShaped(<advancedRocketry:item.spaceChest>, 
 [[<ore:sheetTitanium>, <ReactorCraft:reactorcraft_item_hazchest>,<ore:sheetTitanium>],
 [<ReactorCraft:reactorcraft_block_heatermulti:1>, <advancedRocketry:pressureTank:3>, <ReactorCraft:reactorcraft_block_heatermulti:1>],
 [<ReactorCraft:reactorcraft_block_heatermulti:1>, <RotaryCraft:rotarycraft_item_enginecraft>, <ReactorCraft:reactorcraft_block_heatermulti:1>]]);
recipes.addShaped(<advancedRocketry:item.spaceLeggings>, 
 [[<ore:sheetTitanium>, <ReactorCraft:reactorcraft_block_heatermulti:1>,<ore:sheetTitanium>],
 [<ReactorCraft:reactorcraft_block_heatermulti:1>, <ReactorCraft:reactorcraft_item_hazlegs>, <ReactorCraft:reactorcraft_block_heatermulti:1>],
 [<ore:sheetTitanium>, null, <ore:sheetTitanium>]]);
recipes.addShaped(<advancedRocketry:item.spaceBoots>, 
 [[<ReactorCraft:reactorcraft_block_heatermulti:1>, null, <ReactorCraft:reactorcraft_block_heatermulti:1>],
 [<ore:sheetTitanium>, <ReactorCraft:reactorcraft_item_hazboots>, <ore:sheetTitanium>]]);
recipes.addShaped(<advancedRocketry:pressureTank:3>, 
 [[null, <libVulpes:libVulpesproductsheet:7>,null],
 [<libVulpes:libVulpesproductsheet:7>, <RotaryCraft:rotarycraft_block_blastpane>, <libVulpes:libVulpesproductsheet:7>],
 [null, <libVulpes:libVulpesproductsheet:7>, null]]);
recipes.addShaped(<advancedRocketry:pressureTank:2>, 
 [[null, <libVulpes:libVulpesproductsheet:9>,null],
 [<libVulpes:libVulpesproductsheet:9>, <RotaryCraft:rotarycraft_block_blastpane>, <libVulpes:libVulpesproductsheet:9>],
 [null, <libVulpes:libVulpesproductsheet:9>, null]]);
recipes.addShaped(<advancedRocketry:pressureTank:1>, 
 [[null, <libVulpes:libVulpesproductsheet:6>,null],
 [<libVulpes:libVulpesproductsheet:6>, <RotaryCraft:rotarycraft_block_blastpane>, <libVulpes:libVulpesproductsheet:6>],
 [null, <libVulpes:libVulpesproductsheet:6>, null]]);
recipes.addShaped(<advancedRocketry:pressureTank>, 
 [[null, <libVulpes:libVulpesproductsheet:1>,null],
 [<libVulpes:libVulpesproductsheet:1>, <RotaryCraft:rotarycraft_block_blastpane>, <libVulpes:libVulpesproductsheet:1>],
 [null, <libVulpes:libVulpesproductsheet:1>, null]]);


//Items
recipes.addShaped(<advancedRocketry:oreScanner>,
 [[<minecraft:lever>, <advancedRocketry:circuitIC:2>, <minecraft:lever>],
 [<Eln:Eln.sharedItemStackOne:7824>, <advancedRocketry:miscpart>, <Eln:Eln.sharedItemStackOne:7824>]]);
recipes.addShaped(<advancedRocketry:circuitIC:3>,
  [[<ore:plateSilicon>, <minecraft:quartz>, <ore:plateSilicon>],
  [<ore:plateCopper>, <ore:plateSteel>, <ore:plateCopper>],
  [<ore:plateCopper>, <minecraft:redstone>, <ore:plateCopper>]]);
recipes.addShaped(<advancedRocketry:circuitIC:4>,
  [[<ore:plateSilicon>, <minecraft:quartz>, <ore:plateSilicon>],
  [<ore:plateGold>, <ore:plateSteel>, <ore:plateGold>],
  [<ore:plateGold>, <minecraft:redstone>, <ore:plateGold>]]);
recipes.addShaped(<ImmersiveEngineering:material:14> * 4,
 [[<ore:ingotIron>],
 [<ore:ingotIron>]]);
recipes.addShaped(<ImmersiveEngineering:material:15> * 4,
 [[<ore:ingotSteel>],
 [<ore:ingotSteel>]]);
recipes.addShaped(<advancedRocketry:satellitePrimaryFunction:2>, 
 [[<advancedRocketry:satellitePrimaryFunction>, <ore:plateTitanium>, <advancedRocketry:satellitePrimaryFunction>],
 [<advancedRocketry:wafer>, <advancedRocketry:circuitIC>, <advancedRocketry:wafer>],]);
recipes.remove(<advancedRocketry:item.jackhammer>);
recipes.addShaped(<advancedRocketry:item.jackhammer>,
 [[null, <ore:plateAluminum>, <ore:stickAlloy>],
 [<ore:stickIron>, <PneumaticCraft:pneumaticCilinder>, <ore:plateAluminum>],
 [<PneumaticCraft:airCanister>, <ore:stickIron>, null]]);


//Blocks (Shaped, Machines)
recipes.addShaped(<advancedRocketry:tile.railgun>, 
 [[null, <advancedRocketry:circuitIC:1>, null],
 [<advancedRocketry:circuitIC:3>, <libVulpes:tile.advStructureMachine>, <advancedRocketry:circuitIC:4>],
 [<RotaryCraft:rotarycraft_item_enginecraft>, <ore:coilAluminum>, <RotaryCraft:rotarycraft_item_enginecraft>]]);
recipes.addShaped(<advancedRocketry:tile.suitWorkStation>,
 [[<ore:sheetTitanium>, <ore:sheetTitanium>, <ore:sheetTitanium>],
 [<libVulpes:blockStructureBlock>, <ore:gearTitanium>, <libVulpes:blockStructureBlock>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_machine:75>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<advancedRocketry:cuttingMachine>,
 [[<RotaryCraft:rotarycraft_item_shaftcraft:1>, <advancedRocketry:miscpart>, <RotaryCraft:rotarycraft_item_shaftcraft:1>],
 [<advancedRocketry:circuitIC:4>, <libVulpes:blockStructureBlock>, <advancedRocketry:circuitIC:3>],
 [<ore:plateAlloy>, <ore:gearSteel>, <ore:plateAlloy>]]);
recipes.addShaped(<advancedRocketry:precisionassemblingmachine>,
 [[<RotaryCraft:rotarycraft_item_gearcraft>, <advancedRocketry:miscpart>, <RotaryCraft:rotarycraft_item_gearcraft>],
 [<advancedRocketry:circuitIC:4>, <libVulpes:blockStructureBlock>, <advancedRocketry:circuitIC:3>],
 [<ore:plateAlloy>, <ore:gearSteel>, <ore:plateAlloy>]]);
recipes.addShaped(<advancedRocketry:crystallizer>,
 [[<advancedRocketry:wafer>, <advancedRocketry:miscpart>, <advancedRocketry:wafer>],
 [<advancedRocketry:circuitIC:4>, <libVulpes:blockStructureBlock>, <advancedRocketry:circuitIC:3>],
 [<ore:plateAlloy>, <ore:gearSteel>, <ore:plateAlloy>]]);

//Blocks (Shaped, Rockets)
recipes.addShaped(<advancedRocketry:tile.guidanceComputer>, 
 [[<Eln:Eln.sharedItem:7681>, <advancedRocketry:circuitIC:2>, <Eln:Eln.sharedItem:7681>],
 [<advancedRocketry:circuitIC:1>, <libVulpes:blockStructureBlock>, <advancedRocketry:circuitIC:1>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <advancedRocketry:circuitIC:2>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<advancedRocketry:blockMonitoringStation>, 
 [[<RotaryCraft:rotarycraft_item_borecraft:2>, <advancedRocketry:satellitePrimaryFunction>, <RotaryCraft:rotarycraft_item_borecraft:2>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <libVulpes:blockStructureBlock>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<Eln:Eln.sharedItemStackOne:7825>, <RotaryCraft:rotarycraft_item_shaftcraft>, <advancedRocketry:circuitIC:1>]]);
recipes.addShaped(<advancedRocketry:tile.satelliteMonitor>, 
 [[<advancedRocketry:satellitePrimaryFunction>, <advancedRocketry:miscpart>, <RotaryCraft:rotarycraft_item_borecraft:2>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <libVulpes:blockStructureBlock>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<advancedRocketry:item.satelliteIdChip>, <Eln:Eln.sharedItemStackOne:7825>, <advancedRocketry:circuitIC:1>]]);
recipes.addShaped(<advancedRocketry:rocketmotor>, 
 [[<ore:ingotTitaniumAluminide>, <RotaryCraft:rotarycraft_item_enginecraft:17>, <ore:ingotTitaniumAluminide>],
 [<ChromatiCraft:chromaticraft_item_crafting:16>, <RotaryCraft:rotarycraft_item_enginecraft:19>, <ChromatiCraft:chromaticraft_item_crafting:16>],
 [<ore:plateTitanium>, null, <ore:plateTitanium>]]);
recipes.addShaped(<advancedRocketry:tile.advRocket>, 
 [[<ReactorCraft:reactorcraft_item_crafting:17>, <RotaryCraft:rotarycraft_item_enginecraft:17>, <ReactorCraft:reactorcraft_item_crafting:17>],
 [<ChromatiCraft:chromaticraft_item_crafting:16>, <RotaryCraft:rotarycraft_item_enginecraft:19>, <ChromatiCraft:chromaticraft_item_crafting:16>],
 [<ore:plateTitaniumAluminide>, <customitems:unfinishedengine>, <ore:plateTitaniumAluminide>]]);
recipes.addShaped(<advancedRocketry:fuelTank>, 
 [[<ore:plateTitanium>, <advancedRocketry:tile.pipeSeal>,<ore:plateTitanium>],
 [<RotaryCraft:rotarycraft_block_blastglass>, null, <RotaryCraft:rotarycraft_block_blastglass>],
 [<ore:plateTitanium>, <RotaryCraft:rotarycraft_item_enginecraft>, <ore:plateTitanium>]]);
recipes.addShaped(<advancedRocketry:rocketBuilder>,
 [[<ore:stickTitanium>, <advancedRocketry:miscpart>, <ore:stickTitanium>],
 [<advancedRocketry:circuitIC:3>, <libVulpes:blockStructureBlock>, <advancedRocketry:circuitIC:3>],
 [<ore:gearTitanium>, <ore:concrete>, <ore:gearTitanium>]]);
recipes.addShaped(<advancedRocketry:fuelingStation>,
 [[<libVulpes:blockStructureBlock>, <advancedRocketry:miscpart>, <libVulpes:blockStructureBlock>],
 [<advancedRocketry:circuitIC:5>, <libVulpes:blockStructureBlock>, <RotaryCraft:rotarycraft_item_enginecraft>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>,<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<advancedRocketry:tile.drill>, 
 [[<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_gearcraft:117>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<RotaryCraft:rotarycraft_item_gearcraft:112>, <RotaryCraft:rotarycraft_item_gearcraft:118>, <RotaryCraft:rotarycraft_item_gearcraft:112>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_borecraft>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);

//Blocks (Shaped, Misc)
recipes.addShaped(<advancedRocketry:tile.dataPipe> * 8,
 [[<ore:itemRubber>, <Eln:Eln.SixNode:6080>, <ore:itemRubber>],
 [<Eln:Eln.SixNode:2068>, <Eln:Eln.SixNode:2068>, <Eln:Eln.SixNode:2068>],
 [<ore:itemRubber>, <Eln:Eln.SixNode:6020>, <ore:itemRubber>]]);
recipes.addShaped(<advancedRocketry:tile.oxygenCharger> ,
 [[<RotaryCraft:rotarycraft_item_enginecraft>, <advancedRocketry:miscpart>, <RotaryCraft:rotarycraft_item_enginecraft>],
 [<RotaryCraft:rotarycraft_item_machine:18>, <libVulpes:blockStructureBlock>, <RotaryCraft:rotarycraft_item_machine:18>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>,<minecraft:heavy_weighted_pressure_plate>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<advancedRocketry:structureTower> * 4,
 [[<RotaryCraft:rotarycraft_item_gearcraft>, <RotaryCraft:rotarycraft_item_gearcraft>, <RotaryCraft:rotarycraft_item_gearcraft>],
 [null, <RotaryCraft:rotarycraft_item_gearcraft>, null],
 [<RotaryCraft:rotarycraft_item_gearcraft>,<RotaryCraft:rotarycraft_item_gearcraft>, <RotaryCraft:rotarycraft_item_gearcraft>]]);
recipes.addShaped(<advancedRocketry:tile.atmosphereDetector> ,
 [[<RotaryCraft:rotarycraft_item_shaftcraft>, <advancedRocketry:miscpart>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<minecraft:iron_bars>, <libVulpes:blockStructureBlock>, <RotaryCraft:rotarycraft_item_enginecraft>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>,<advancedRocketry:circuitIC>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<advancedRocketry:tile.sawBlade> ,
 [[<RotaryCraft:rotarycraft_item_gearcraft>, null, <RotaryCraft:rotarycraft_item_gearcraft>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_borecraft:7>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>,null, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<libVulpes:tile.motor>,
 [[<Eln:Eln.sharedItem:7708>, <ore:coilCopper>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<RotaryCraft:rotarycraft_item_gearcraft>, <RotaryCraft:rotarycraft_item_gearcraft>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<Eln:Eln.sharedItem:7708>, <ore:coilCopper>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<libVulpes:tile.advancedMotor>,
 [[<Eln:Eln.sharedItem:7708>, <ore:coilGold>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<RotaryCraft:rotarycraft_item_gearcraft>, <RotaryCraft:rotarycraft_item_gearcraft>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<Eln:Eln.sharedItem:7708>, <ore:coilGold>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<libVulpes:tile.enhancedMotor>,
 [[<Eln:Eln.sharedItem:7709>, <ore:coilAluminum>, <ore:plateTitanium>],
 [<ore:stickTitanium>, <ore:stickTitanium>, <ore:plateTitanium>],
 [<Eln:Eln.sharedItem:7709>, <ore:coilAluminum>, <ore:plateTitanium>]]);
recipes.addShaped(<libVulpes:tile.eliteMotor>,
 [[<Eln:Eln.sharedItem:7709>, <ore:coilTitanium>, <ore:plateTitaniumIridium>],
 [<ore:stickTitaniumIridium>, <ore:stickTitaniumIridium>, <ore:plateTitaniumIridium>],
 [<Eln:Eln.sharedItem:7709>, <ore:coilTitanium>, <ore:plateTitaniumIridium>]]);
recipes.addShaped(<libVulpes:blockStructureBlock> * 8, 
 [[<ore:ingotHSLA>, <ore:plateAlloy>,<ore:ingotHSLA>],
 [<ore:plateAlloy>, <RotaryCraft:rotarycraft_item_borecraft:4>, <ore:plateAlloy>],
 [<ore:ingotHSLA>, <Eln:Eln.SixNode:2060>, <ore:ingotHSLA>]]);
recipes.addShaped(<advancedRocketry:tile.planetHoloSelector>,
 [[<RotaryCraft:rotarycraft_item_machine:79>, <advancedRocketry:tile.lens>, <RotaryCraft:rotarycraft_item_machine:79>],
 [null, <advancedRocketry:tile.forceFieldProjector>, null],
 [<RotaryCraft:rotarycraft_item_engine>, <advancedRocketry:miscpart>, <RotaryCraft:rotarycraft_item_engine>]]);
recipes.addShaped(<advancedRocketry:tile.pressurizedTank>, 
 [[<ore:stickTitanium>, <RotaryCraft:rotarycraft_block_blastpane>,<ore:stickTitanium>],
 [<ore:plateTitanium>, <RotaryCraft:rotarycraft_block_blastpane>, <ore:plateTitanium>],
 [<ore:stickTitanium>, <RotaryCraft:rotarycraft_block_blastpane>, <ore:stickTitanium>]]);
 
//Blocks, Shaped, Station)
recipes.addShaped(<advancedRocketry:tile.planetanalyser>,
 [[<advancedRocketry:circuitIC:1>, <advancedRocketry:miscpart>, <advancedRocketry:circuitIC:1>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <libVulpes:blockStructureBlock>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<advancedRocketry:item.planetIdChip>, <RotaryCraft:rotarycraft_item_shaftcraft>, <advancedRocketry:item.planetIdChip>]]);
recipes.addShaped(<advancedRocketry:tile.biomeScanner>,
 [[<RotaryCraft:rotarycraft_item_shaftcraft>, <advancedRocketry:satellitePrimaryFunction:5>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<Eln:Eln.sharedItemStackOne:7824>, <libVulpes:blockStructureBlock>, <Eln:Eln.sharedItemStackOne:7824>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<advancedRocketry:tile.pipeSeal> * 4, 
 [[null, <advancedRocketry:advancedRocketryproductplate>, null],
 [<advancedRocketry:advancedRocketryproductplate>, <RotaryCraft:rotarycraft_block_blastpane>, <advancedRocketry:advancedRocketryproductplate>],
 [null, <advancedRocketry:advancedRocketryproductplate>, null]]);
recipes.addShaped(<advancedRocketry:item.smallAirlock>, 
 [[<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<advancedRocketry:tile.scrubber>,
 [[<minecraft:iron_bars>, <RotaryCraft:rotarycraft_item_enginecraft>, <minecraft:iron_bars>],
 [<minecraft:iron_bars>, <libVulpes:tile.motor>, <minecraft:iron_bars>],
 [<minecraft:iron_bars>, <advancedRocketry:miscpart:1>, <minecraft:iron_bars>]]);
recipes.addShaped(<advancedRocketry:tile.oxygenVent>,
 [[<minecraft:iron_bars>, <RotaryCraft:rotarycraft_item_enginecraft>, <minecraft:iron_bars>],
 [<minecraft:iron_bars>, <libVulpes:tile.motor>, <minecraft:iron_bars>],
 [<minecraft:iron_bars>, <advancedRocketry:fuelTank>, <minecraft:iron_bars>]]);


//Blocks (Shapeless)
recipes.addShapeless(<advancedRocketry:tile.dockingPad>, [<advancedRocketry:circuitIC:1>, <ore:concrete>]);
recipes.addShapeless(<advancedRocketry:tile.concrete> * 8, [<ore:turfMoon>, <ore:dustSulfur>, <minecraft:gravel>, <ore:stickIron>]);
recipes.addShapeless(<libVulpes:rfBattery>, [<libVulpes:blockStructureBlock>, <RotaryCraft:rotarycraft_item_misccraft:2>, <Eln:Eln.sharedItemStackOne:7824>]);


//Chip Conversion, Cyclical
recipes.addShaped(<advancedRocketry:item.stationChip>,
 [[<RotaryCraft:rotarycraft_item_screwdriver>.reuse(), null, null],
 [null, <advancedRocketry:circuitIC:1>, null],
 [null, null, null]]); 
recipes.addShaped(<advancedRocketry:item.asteroidChip>,
 [[null, <RotaryCraft:rotarycraft_item_screwdriver>.reuse(), null],
 [null, <advancedRocketry:circuitIC:1>, null],
 [null, null, null]]); 
recipes.addShaped(<advancedRocketry:item.satelliteIdChip>,
 [[null, null, <RotaryCraft:rotarycraft_item_screwdriver>.reuse()],
 [null, <advancedRocketry:circuitIC:1>, null],
 [null, null, null]]); 
recipes.addShaped(<advancedRocketry:item.elevatorChip>,
 [[null, null, null],
 [null, <advancedRocketry:circuitIC:1>, <RotaryCraft:rotarycraft_item_screwdriver>.reuse()],
 [null, null, null]]); 
recipes.addShaped(<advancedRocketry:item.planetIdChip>,
 [[null, null, null],
 [null, <advancedRocketry:circuitIC:1>, null],
 [null, null, <RotaryCraft:rotarycraft_item_screwdriver>.reuse()]]); 
