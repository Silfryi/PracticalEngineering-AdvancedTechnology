//Import
import mods.nei.NEI.hide;
import minetweaker.item.IItemStack;
import mods.pneumaticcraft.Pressure;



//Arrays For removal
var toHide = [//Plastic plants and other items
              <PneumaticCraft:plasticPlant>,
              <PneumaticCraft:plasticPlant:1>,
              <PneumaticCraft:plasticPlant:2>,
              <PneumaticCraft:plasticPlant:3>,
              <PneumaticCraft:plasticPlant:4>,
              <PneumaticCraft:plasticPlant:5>,
              <PneumaticCraft:plasticPlant:6>,
              <PneumaticCraft:plasticPlant:7>,
              <PneumaticCraft:plasticPlant:8>,
              <PneumaticCraft:plasticPlant:9>,
              <PneumaticCraft:plasticPlant:10>,
              <PneumaticCraft:plasticPlant:11>,
              <PneumaticCraft:plasticPlant:12>,
              <PneumaticCraft:plasticPlant:13>,
              <PneumaticCraft:plasticPlant:14>,
              <PneumaticCraft:plasticPlant:15>,
              <PneumaticCraft:seismicSensor>,
              //Technical blocks
              <PneumaticCraft:keroseneLampLight>
			  ] as IItemStack[];
			  
var toRemove = [<PneumaticCraft:seismicSensor>,
                <PneumaticCraft:assemblyLaser>,
                <PneumaticCraft:assemblyDrill>,
                <PneumaticCraft:refinery>,
                <PneumaticCraft:heatFrame>,
				<PneumaticCraft:advancedPCB>,
				<PneumaticCraft:pneumaticCilinder>,
				<PneumaticCraft:gpsTool>,
				<PneumaticCraft:aerialInterface>,
				<PneumaticCraft:universalSensor>
			    ] as IItemStack[];
				
var upgrades = [<PneumaticCraft:machineUpgrade>,
                <PneumaticCraft:machineUpgrade:1>,
                <PneumaticCraft:machineUpgrade:2>,
                <PneumaticCraft:machineUpgrade:3>,
                <PneumaticCraft:machineUpgrade:4>,
                <PneumaticCraft:machineUpgrade:5>,
                <PneumaticCraft:machineUpgrade:6>,
                <PneumaticCraft:machineUpgrade:7>,
                <PneumaticCraft:machineUpgrade:8>,
                <PneumaticCraft:machineUpgrade:9>
	            ] as IItemStack[];			

//Remove and hide what all needs it
for item in toRemove{
    recipes.remove(item);
}
for item in toHide{
    hide(item);
}
for item in upgrades{
    recipes.remove(item);
}



//Shaped recipes, PneumaticCraft related
//Upgrades
recipes.addShaped(<PneumaticCraft:machineUpgrade:1>, 
 [[<ore:ingotIronCompressed>, <PneumaticCraft:pressureTube>, <ore:ingotIronCompressed>],
 [<RotaryCraft:rotarycraft_item_machine:123>, <minecraft:dropper>, <PneumaticCraft:pressureTube>],
 [<ore:ingotIronCompressed>, <PneumaticCraft:pressureTube>, <ore:ingotIronCompressed>]]);
recipes.addShaped(<PneumaticCraft:machineUpgrade:1> * 4, 
 [[<ore:ingotIronCompressed>, <PneumaticCraft:plastic:15>, <ore:ingotIronCompressed>],
 [<RotaryCraft:rotarycraft_item_machine:123>, <minecraft:dropper>, <PneumaticCraft:advancedPressureTube>],
 [<ore:ingotIronCompressed>, <PneumaticCraft:plastic:15>, <ore:ingotIronCompressed>]]);
recipes.addShaped(<PneumaticCraft:machineUpgrade:2>, 
 [[<ore:ingotIronCompressed>, <PneumaticCraft:plastic:15>, <ore:ingotIronCompressed>],
 [<PneumaticCraft:advancedPressureTube>, <RotaryCraft:rotarycraft_item_machine:55>, <PneumaticCraft:advancedPressureTube>],
 [<ore:ingotIronCompressed>, <PneumaticCraft:plastic:15>, <ore:ingotIronCompressed>]]);
recipes.addShaped(<PneumaticCraft:machineUpgrade:3>, 
 [[<ore:ingotIronCompressed>, <PneumaticCraft:plastic:15>, <ore:ingotIronCompressed>],
 [<PneumaticCraft:advancedPressureTube>, <minecraft:ender_eye>, <PneumaticCraft:advancedPressureTube>],
 [<ore:ingotIronCompressed>, <PneumaticCraft:plastic:15>, <ore:ingotIronCompressed>]]);
recipes.addShaped(<PneumaticCraft:machineUpgrade:4>, 
 [[<ore:ingotIronCompressed>, <PneumaticCraft:advancedPressureTube>, <ore:ingotIronCompressed>],
 [<PneumaticCraft:plastic:15>, <minecraft:ender_eye>, <PneumaticCraft:plastic:15>],
 [<ore:ingotIronCompressed>, <PneumaticCraft:advancedPressureTube>, <ore:ingotIronCompressed>]]);
recipes.addShaped(<PneumaticCraft:machineUpgrade:5> * 4, 
 [[<ore:ingotIronCompressed>, <PneumaticCraft:plastic:15>, <ore:ingotIronCompressed>],
 [<PneumaticCraft:advancedPressureTube>, <PneumaticCraft:printedCircuitBoard>, <PneumaticCraft:lubricantBucket>],
 [<ore:ingotIronCompressed>, <PneumaticCraft:plastic:15>, <ore:ingotIronCompressed>]]);
recipes.addShaped(<PneumaticCraft:machineUpgrade:6>, 
 [[<ore:ingotIronCompressed>, <PneumaticCraft:plastic:15>, <ore:ingotIronCompressed>],
 [<PneumaticCraft:advancedPressureTube>, <RotaryCraft:rotarycraft_item_iogoggles>, <PneumaticCraft:advancedPressureTube>],
 [<ore:ingotIronCompressed>, <PneumaticCraft:plastic:15>, <ore:ingotIronCompressed>]]);
recipes.addShaped(<PneumaticCraft:machineUpgrade:7>, 
 [[<ore:ingotIronCompressed>, <PneumaticCraft:plastic:15>, <ore:ingotIronCompressed>],
 [<PneumaticCraft:advancedPressureTube>, <PneumaticCraft:gpsTool>, <PneumaticCraft:advancedPressureTube>],
 [<ore:ingotIronCompressed>, <PneumaticCraft:plastic:15>, <ore:ingotIronCompressed>]]);
recipes.addShaped(<PneumaticCraft:machineUpgrade:8> * 4, 
 [[<ore:ingotIronCompressed>, <PneumaticCraft:plastic:15>, <ore:ingotIronCompressed>],
 [<PneumaticCraft:advancedPressureTube>, <PneumaticCraft:pneumaticCilinder>, <PneumaticCraft:advancedPressureTube>],
 [<ore:ingotIronCompressed>, <PneumaticCraft:plastic:15>, <ore:ingotIronCompressed>]]);
recipes.addShaped(<PneumaticCraft:machineUpgrade:9>, 
 [[<ore:ingotIronCompressed>, <PneumaticCraft:pressureTube>, <ore:ingotIronCompressed>],
 [<PneumaticCraft:safetyTubeModule>, <PneumaticCraft:regulatorTubeModule>, <PneumaticCraft:pressureGaugeModule>],
 [<ore:ingotIronCompressed>, <PneumaticCraft:pressureTube>, <ore:ingotIronCompressed>]]);
recipes.addShaped(<PneumaticCraft:machineUpgrade:9> * 4, 
 [[<ore:ingotIronCompressed>, <PneumaticCraft:plastic:15>, <ore:ingotIronCompressed>],
 [<PneumaticCraft:safetyTubeModule>, <PneumaticCraft:advancedPressureTube>, <PneumaticCraft:pressureGaugeModule>],
 [<ore:ingotIronCompressed>, <PneumaticCraft:plastic:15>, <ore:ingotIronCompressed>]]);

//Blocks
recipes.addShaped(<PneumaticCraft:pressureTube> * 4,
 [[<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>]]);
recipes.addShaped(<PneumaticCraft:airCompressor>,
 [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
 [<ore:plateSteel>, null, <PneumaticCraft:pressureTube>],
 [<ore:plateSteel>, <minecraft:furnace>, <ImmersiveEngineering:material:12>]]);
recipes.addShaped(<PneumaticCraft:pressureChamberWall> * 12,
 [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
 [<ore:plateSteel>, null, <ore:plateSteel>],
 [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
recipes.addShaped(<PneumaticCraft:universalSensor>, 
 [[<PneumaticCraft:ingotIronCompressed>, <PneumaticCraft:plastic:12>, <PneumaticCraft:ingotIronCompressed>],
 [<PneumaticCraft:plastic:5>, <minecraft:redstone>, <PneumaticCraft:plastic:5>],
 [<PneumaticCraft:ingotIronCompressed>, <PneumaticCraft:pressureTube>, <PneumaticCraft:ingotIronCompressed>]]);
recipes.addShaped(<PneumaticCraft:aerialInterface>, 
 [[<PneumaticCraft:pressureChamberWall>, <PneumaticCraft:pressureChamberInterface>, <PneumaticCraft:pressureChamberWall>],
 [<minecraft:ender_pearl>, <PneumaticCraft:assemblyIOUnit>, <minecraft:ender_pearl>],
 [<PneumaticCraft:pressureChamberWall>, <PneumaticCraft:advancedPressureTube>, <PneumaticCraft:pressureChamberWall>]]);
recipes.addShaped(<PneumaticCraft:gpsTool>, 
 [[null, <RotaryCraft:rotarycraft_item_borecraft:2>, null],
 [<PneumaticCraft:plastic:1>, <advancedRocketry:miscpart>, <PneumaticCraft:plastic:1>],
 [<PneumaticCraft:plastic:1>, <RotaryCraft:rotarycraft_item_borecraft:4>, <PneumaticCraft:plastic:1>]]);
recipes.addShaped(<PneumaticCraft:assemblyDrill>,
 [[<RotaryCraft:rotarycraft_item_borecraft>, <PneumaticCraft:pneumaticCilinder>, <PneumaticCraft:pneumaticCilinder>],
 [null, null, <PneumaticCraft:pneumaticCilinder>],
 [<ore:ingotIronCompressed>, <PneumaticCraft:printedCircuitBoard> ,<ore:ingotIronCompressed>]]);
recipes.addShaped(<PneumaticCraft:assemblyLaser>,
 [[<BuildCraft|Silicon:laserBlock>, <PneumaticCraft:pneumaticCilinder>, <PneumaticCraft:pneumaticCilinder>],
 [null, null, <PneumaticCraft:pneumaticCilinder>],
 [<ore:ingotIronCompressed>, <PneumaticCraft:printedCircuitBoard> ,<ore:ingotIronCompressed>]]);
recipes.addShaped(<PneumaticCraft:refinery>, 
 [[<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>],
 [<ore:blockGlass>, <PneumaticCraft:heatFrame>, <ore:blockGlass>],
 [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>]]);
recipes.addShaped(<PneumaticCraft:heatFrame>, 
 [[<ore:ingotIronCompressed>, <PneumaticCraft:pressureTube>, <ore:ingotIronCompressed>],
 [<PneumaticCraft:pressureTube>, null, <PneumaticCraft:pressureTube>],
 [<ore:ingotIronCompressed>, <PneumaticCraft:pressureTube>, <ore:ingotIronCompressed>]]);
recipes.addShaped(<PneumaticCraft:pneumaticCilinder>, 
 [[<PneumaticCraft:plastic:4>, <ore:ingotIronCompressed>, <PneumaticCraft:plastic:4>],
 [<PneumaticCraft:plastic:4>, <ore:ingotIronCompressed>, <PneumaticCraft:plastic:4>],
 [<PneumaticCraft:plastic:4>, <PneumaticCraft:pressureTube>, <PneumaticCraft:plastic:4>]]);
 
//Shapeless recipes
recipes.addShapeless(<PneumaticCraft:advancedPCB>, [<customitems:unassembledadvancedpcb>, <PneumaticCraft:transistor>, <PneumaticCraft:transistor>, <PneumaticCraft:transistor>, <PneumaticCraft:capacitor>, <PneumaticCraft:capacitor>, <PneumaticCraft:capacitor>]);

  
//Pressure chamber recipes
//Advanced PCB
Pressure.addRecipe([<PneumaticCraft:plastic:2> * 2, <RotaryCraft:rotarycraft_item_shaftcraft:1>, <customitems:annealedcopperwire> * 4], 2, [<customitems:emptyadvancedpcb>], true);
//Etching acid from sulfuric acid
Pressure.removeRecipe([<PneumaticCraft:etchacidBucket>]);
Pressure.addRecipe([<customitems:sulfuricacid_bucket>], 2, [<PneumaticCraft:etchacidBucket>], true);
//Diamonds from HOP graphite and high pressure
Pressure.removeRecipe([<minecraft:diamond>]);
Pressure.addRecipe([<ImmersiveEngineering:metal:19> * 8], 6, [<minecraft:diamond>], true);
//Standard PCB
Pressure.removeRecipe([<PneumaticCraft:emptyPCB:100>]);
Pressure.addRecipe([<ImmersiveEngineering:metal:31>, <PneumaticCraft:plastic:2>], 2, [<PneumaticCraft:emptyPCB:100>], false);

//Assembly recipes
mods.pneumaticcraft.Assembly.addLaserRecipe(<customitems:emptyadvancedpcb>, <customitems:unassembledadvancedpcb>);
mods.pneumaticcraft.Assembly.addLaserRecipe(<PneumaticCraft:machineUpgrade:5>, <LogisticsPipes:item.itemUpgrade:20>);
mods.pneumaticcraft.Assembly.addDrillRecipe(<RotaryCraft:rotarycraft_block_blastglass>, <advancedRocketry:tile.lens>);
mods.pneumaticcraft.Assembly.addLaserRecipe(<libVulpes:libVulpesproductboule:3>, <advancedRocketry:wafer> * 16);
mods.pneumaticcraft.Assembly.addLaserRecipe(<libVulpes:libVulpesproductplate:3>, <advancedRocketry:wafer>);
mods.pneumaticcraft.Assembly.addLaserRecipe(<advancedRocketry:circuitplate>, <advancedRocketry:circuitIC> * 4);
mods.pneumaticcraft.Assembly.addLaserRecipe(<advancedRocketry:circuitplate:1>, <advancedRocketry:circuitIC:2> * 4);
mods.pneumaticcraft.Assembly.addLaserRecipe(<customitems:dmlsbedengine>, <customitems:dmlsbedengine:1>.withTag({display: {Lore: ["100% Complete"]}}));
mods.pneumaticcraft.Assembly.addLaserRecipe(<customitems:dmlsbedblade>, <customitems:dmlsbedblade:1>.withTag({display: {Lore: ["100% Complete"]}}));
mods.pneumaticcraft.Assembly.addLaserRecipe(<customitems:dmlsbeddrum>, <customitems:dmlsbeddrum:1>.withTag({display: {Lore: ["100% Complete"]}}));
mods.pneumaticcraft.Assembly.addLaserRecipe(<customitems:dmlsbedbay>, <customitems:dmlsbedbay:1>.withTag({display: {Lore: ["100% Complete"]}}));
 
 
 
