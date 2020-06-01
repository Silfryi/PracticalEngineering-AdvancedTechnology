//Import
import mods.nei.NEI.hide;
import minetweaker.item.IItemStack;


//Arrays for removal and hiding
var toHide = [//Useless blocks, admin and IE-supplanted
              //<Railcraft:machine.alpha:4>,
              <Railcraft:cart.anchor.admin>,
              //<Railcraft:machine.alpha:7>
              ] as IItemStack[];
  
var toRemove = [//Useless blocks, IE-supplanted
                <Railcraft:machine.alpha:7>,
                //Blocks whose recipes make no sense for what they do
                <Railcraft:machine.alpha:8>,
                <Railcraft:machine.beta:3>,
                <Railcraft:machine.beta:4>,
                <Railcraft:machine.beta:5>,
                <Railcraft:machine.beta:9>,
                <Railcraft:machine.epsilon>,
                <Railcraft:machine.epsilon:4>
                ] as IItemStack[];

//Hide what we don't need from NEI
for item in toHide{
    hide(item);
}

//Remove all that needs removing
for item in toRemove{
    recipes.remove(item);
}


//Useless machine recipes removal, supplanted by Immersive
mods.railcraft.CokeOven.removeRecipe(<minecraft:coal:1>);

//RailCraft machine recipes that make sense
recipes.addShaped(<Railcraft:machine.alpha:8>,
 [[<ore:stickSteel>, <RotaryCraft:rotarycraft_item_shaftcraft:13>, <ore:plateSteel>],
 [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
 [<ore:stickSteel>, <RotaryCraft:rotarycraft_item_shaftcraft:13>, <ore:plateSteel>]]);
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
recipes.addShaped(<Railcraft:machine.beta:9>,
 [[<ore:plateSteel>, <ImmersiveEngineering:storage:8>, <ore:plateSteel>],
 [<ore:stickSteel>, <ore:gearSteel>, <ore:stickSteel>],
 [<RotaryCraft:rotarycraft_item_enginecraft:5>, <ImmersiveEngineering:metalDevice2:5>, <RotaryCraft:rotarycraft_item_enginecraft:5>]]);
mods.railcraft.Rolling.removeRecipe(<Railcraft:machine.delta>);
mods.railcraft.Rolling.addShaped(<Railcraft:machine.delta> * 4,
 [[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>],
 [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
 [<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>]]);
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
