//Import
import mods.nei.NEI.hide;
import minetweaker.item.IItemStack;


//Hide admin-only items from NEI
hide(<Railcraft:cart.anchor.admin>);


//Coke Oven recipes removal, supplanted by Immersive
recipes.remove(<Railcraft:machine.alpha:7>);
mods.railcraft.CokeOven.removeRecipe(<minecraft:coal:1>);

//Steam system recipes
//Boiler compontents
recipes.remove(<Railcraft:machine.beta:3>);
recipes.remove(<Railcraft:machine.beta:4>);
recipes.remove(<Railcraft:machine.beta:5>);
recipes.addShaped(<Railcraft:machine.beta:3> * 4, 
 [[<ore:plateIron>, <ImmersiveEngineering:metalDevice2:5>, <ore:plateIron>],
 [<ImmersiveEngineering:metalDevice2:5>, null, <ImmersiveEngineering:metalDevice2:5>],
 [<ore:plateIron>, <ImmersiveEngineering:metalDevice2:5>, <ore:plateIron>]]);
recipes.addShaped(<Railcraft:machine.beta:4> * 4, 
 [[<ore:plateSteel>, <ImmersiveEngineering:metalDevice2:5>, <ore:plateSteel>],
 [<ImmersiveEngineering:metalDevice2:5>, null, <ImmersiveEngineering:metalDevice2:5>],
 [<ore:plateSteel>, <ImmersiveEngineering:metalDevice2:5>, <ore:plateSteel>]]);
recipes.addShaped(<Railcraft:machine.beta:5>, 
 [[<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick>],
 [<ImmersiveEngineering:metalDevice2:5>, <minecraft:furnace>, <ImmersiveEngineering:metalDevice2:5>],
 [<ore:ingotBrick>, <minecraft:flint>, <ore:ingotBrick>]]);
//Steam Engine 
recipes.remove(<Railcraft:machine.beta:9>);
recipes.addShaped(<Railcraft:machine.beta:9>,
 [[<ore:plateSteel>, <ImmersiveEngineering:storage:8>, <ore:plateSteel>],
 [<ore:stickSteel>, <ore:gearSteel>, <ore:stickSteel>],
 [<RotaryCraft:rotarycraft_item_enginecraft:5>, <ImmersiveEngineering:metalDevice2:5>, <RotaryCraft:rotarycraft_item_enginecraft:5>]]);
 
//Rolling Machine
recipes.remove(<Railcraft:machine.alpha:8>);
recipes.addShaped(<Railcraft:machine.alpha:8>,
 [[<ore:stickSteel>, <RotaryCraft:rotarycraft_item_shaftcraft:13>, <ore:plateSteel>],
 [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
 [<ore:stickSteel>, <RotaryCraft:rotarycraft_item_shaftcraft:13>, <ore:plateSteel>]]);
mods.railcraft.Rolling.removeRecipe(<Railcraft:machine.delta>);
mods.railcraft.Rolling.addShaped(<Railcraft:machine.delta> * 4,
 [[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>],
 [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
 [<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>]]);

//Electric Track pieces
recipes.remove(<Railcraft:machine.epsilon>);
recipes.remove(<Railcraft:machine.epsilon:4>);
recipes.addShaped(<Railcraft:machine.epsilon>,
 [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
 [<ore:ingotCopper>, <ImmersiveEngineering:storage:9>, <Railcraft:machine.delta>],
 [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
recipes.addShaped(<Railcraft:machine.epsilon:4> * 2,
 [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
 [<ore:ingotCopper>, <ImmersiveEngineering:storage:8>, <Railcraft:machine.delta>],
 [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
 

//"Fluid Fuel" Buckets
//furnace.setFuel(<customitems:highgradekerosene_bucket>, 1323000);
furnace.setFuel(<PneumaticCraft:dieselBucket>, 1319600);
furnace.setFuel(<PneumaticCraft:keroseneBucket>, 1174500);
furnace.setFuel(<ImmersiveEngineering:fluidContainers:7>, 1098900);
furnace.setFuel(<PneumaticCraft:fuelBucket>, 1065500);
furnace.setFuel(<PneumaticCraft:lpgBucket>, 838400);
furnace.setFuel(<ImmersiveEngineering:fluidContainers:5>, 714600);
