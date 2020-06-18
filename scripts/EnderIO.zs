//Import
import mods.nei.NEI.hide;
import minetweaker.item.IItemStack;



//Arrays for removal and hiding
var toHide = [//Machines
              <EnderIO:blockAlloySmelter>,
              <EnderIO:blockSagMill>,
              <EnderIO:blockStirlingGenerator>,
              <EnderIO:blockSolarPanel:*>,
              <EnderIO:blockInhibitorObelisk>,
              <EnderIO:blockFarmStation>,
              //Technical blocks
              <EnderIO:blockConduitBundle>,
              <EnderIO:blockLightNode>,
              //Useless silicon analouge
              //<EnderIO:itemMaterial:0>
              ] as IItemStack[];
  
var toRemove = [<EnderIO:blockAlloySmelter>,
                <EnderIO:blockSagMill>,
                <EnderIO:blockPainter>,
                <EnderIO:blockStirlingGenerator>,
                <EnderIO:blockSolarPanel:*>,
                <EnderIO:blockVacuumChest>,
                <EnderIO:blockTransceiver>,
                <EnderIO:blockInhibitorObelisk>,
                <EnderIO:blockCapBank:1>,
                <EnderIO:blockCapBank:2>,
                <EnderIO:blockCapBank:3>,
                <EnderIO:itemMachinePart>,
                <EnderIO:itemMachinePart:1>,
                <EnderIO:itemBasicCapacitor>,
                <EnderIO:itemBasicCapacitor:1>,
                <EnderIO:itemBasicCapacitor:2>,
                <EnderIO:itemMaterial:2>,
                <EnderIO:blockSliceAndSplice>,
                <EnderIO:blockSoulBinder>,
                <EnderIO:blockPoweredSpawner>,
                //Useless silicon analouge
                <EnderIO:itemMaterial:0>
                ] as IItemStack[];

//Hide what we don't need from NEI
for item in toHide{
    recipes.remove(item);
    hide(item);
}

//Remove all that needs removing
for item in toRemove{
    recipes.remove(item);
}



//EnderIO Shaped Recipes, About Half Machines and Half Parts
recipes.addShaped(<EnderIO:blockPainter>,
 [[<ore:gemQuartz>, <Eln:Eln.sharedItem:7631>, <ore:gemQuartz>],
 [<ore:ingotElectricalSteel>, <EnderIO:itemMachinePart>, <ore:ingotElectricalSteel>],
 [<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>]]);
recipes.addShaped(<EnderIO:blockPoweredSpawner>,
 [[<ore:ingotPlatinum>, <ore:itemSkull>, <ore:ingotPlatinum>],
 [<ore:ingotPlatinum>, <EnderIO:itemMachinePart>, <ore:ingotPlatinum>],
 [<ore:itemVibrantCrystal>, <EnderIO:itemFrankenSkull>, <ore:itemVibrantCrystal>]]);
recipes.addShaped(<EnderIO:blockSoulBinder>, 
 [[<ore:ingotPlatinum>, <EnderIO:blockEndermanSkull>, <ore:ingotPlatinum>],
 [<minecraft:skull:4>, <EnderIO:itemMachinePart>, <minecraft:skull:2>],
 [<ore:ingotSoularium>, <minecraft:skull>, <ore:ingotSoularium>]]);
recipes.addShaped(<EnderIO:blockSliceAndSplice>,
 [[<ore:ingotPlatinum>, <ore:itemSkull>, <ore:ingotPlatinum>],
 [<ore:ingotSoularium>, <EnderIO:itemMachinePart>, <ore:ingotSoularium>],
 [<ore:ingotPlatinum>, <ore:ingotSoularium>, <ore:ingotPlatinum>]]);
recipes.addShaped(<EnderIO:blockCapBank:1>,
 [[<ore:ingotElectricalSteel>, <EnderIO:itemBasicCapacitor>, <ore:ingotElectricalSteel>],
 [<EnderIO:itemBasicCapacitor>, <EnderIO:itemMachinePart>, <EnderIO:itemBasicCapacitor>],
 [<ore:ingotElectricalSteel>, <EnderIO:itemBasicCapacitor>, <ore:ingotElectricalSteel>]]);
recipes.addShaped(<EnderIO:blockCapBank:2>,
 [[<ore:ingotEnergeticAlloy>, <EnderIO:itemBasicCapacitor:1>, <ore:ingotEnergeticAlloy>],
 [<EnderIO:itemBasicCapacitor:1>, <EnderIO:itemMachinePart>, <EnderIO:itemBasicCapacitor:1>],
 [<ore:ingotEnergeticAlloy>, <EnderIO:itemBasicCapacitor:1>, <ore:ingotEnergeticAlloy>]]);
recipes.addShaped(<EnderIO:blockCapBank:3>,
 [[<ore:ingotVibrantAlloy>, <EnderIO:itemBasicCapacitor:2>, <ore:ingotVibrantAlloy>],
 [<EnderIO:itemBasicCapacitor:2>, <EnderIO:itemMachinePart>, <EnderIO:itemBasicCapacitor:2>],
 [<ore:ingotVibrantAlloy>, <EnderIO:itemBasicCapacitor:2>, <ore:ingotVibrantAlloy>]]);
recipes.addShaped(<EnderIO:blockVacuumChest>, 
 [[<ore:ingotElectricalSteel>, <EnderIO:blockBuffer>, <ore:ingotElectricalSteel>],
 [<ore:ingotElectricalSteel>, <EnderIO:itemMaterial:5>, <ore:ingotElectricalSteel>]]);
recipes.addShaped(<EnderIO:itemMaterial:2> * 16,
 [[<ore:dustSilicon>, <ore:dustTitaniumAluminide>, <ore:dustSilicon>],
 [<ore:dustNetherQuartz>, <EnderIO:itemMaterial:8>, <ore:dustNetherQuartz>],
 [<ore:dustSilicon>, <ore:dustTitaniumAluminide>, <ore:dustSilicon>]]);
recipes.addShaped(<EnderIO:itemMachinePart>,
 [[<RotaryCraft:rotarycraft_item_compacts:9>, <PneumaticCraft:plastic:8>, <RotaryCraft:rotarycraft_item_compacts:9>],
 [<PneumaticCraft:plastic:8>, <PneumaticCraft:advancedPCB>, <PneumaticCraft:plastic:8>],
 [<RotaryCraft:rotarycraft_item_compacts:9>, <Eln:Eln.SixNode:2064>, <RotaryCraft:rotarycraft_item_compacts:9>]]);
recipes.addShaped(<EnderIO:itemBasicCapacitor:1>,
 [[null, <ore:ingotEnergeticAlloy>, null],
 [<EnderIO:itemBasicCapacitor>, <ore:plateSilicon>, <EnderIO:itemBasicCapacitor>],
 [null, <ore:ingotEnergeticAlloy>, null]]);
recipes.addShaped(<EnderIO:itemBasicCapacitor:1>,
 [[null, <ore:ingotEnergeticAlloy>, null],
 [<EnderIO:itemBasicCapacitor>, <advancedRocketry:wafer>, <EnderIO:itemBasicCapacitor>],
 [null, <ore:ingotEnergeticAlloy>, null]]);
recipes.addShaped(<EnderIO:itemBasicCapacitor:2>,
 [[null, <ore:ingotVibrantAlloy>, null],
 [<EnderIO:itemBasicCapacitor:1>, <EnderIO:bucketLiquid_sunshine>, <EnderIO:itemBasicCapacitor:1>],
 [null, <ore:ingotVibrantAlloy>, null]]);
recipes.addShaped(<EnderIO:itemBasicCapacitor>,
 [[null, <customitems:annealedcopperwire>, <minecraft:redstone>],
 [<customitems:annealedcopperwire>, <RotaryCraft:rotarycraft_item_compacts:10>, <customitems:annealedcopperwire>],
 [<minecraft:redstone>, <customitems:annealedcopperwire>, null]]);
recipes.addShaped(<EnderIO:itemMachinePart:1> * 3,
 [[null, <ore:ingotAlloy>, null],
 [<ore:ingotAlloy>, <ore:ingotAlloy>, <ore:ingotAlloy>],
 [null, <ore:ingotAlloy>, null]]);
 
