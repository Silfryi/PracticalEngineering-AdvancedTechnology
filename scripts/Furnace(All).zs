//Import
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;



//Furnace Removal Array
var furnaceRemove = [<ore:ingotSteel>,
                     <ore:ingotAluminum>,
                     <ore:ingotTungsten>,
                     <ore:ingotTitanium>,
                     <ore:ingotRutile>,
                     <ore:ingotPlatinum>,
                     <ore:dustDilithium>,
                     <ore:ingotIridium>,
                     <ore:concrete>,
                     <ore:ingotTitaniumAluminide>,
                     <ore:ingotTitaniumIridium>,
                     <EnderIO:itemMaterial:1>,
                     <RotaryCraft:rotarycraft_item_modingots:21>,
                     <ore:ingotAlloy>
                     ] as IIngredient[];

//Furnace Recipe Removal (Most Recipes Moved to Friction Heater or Re-Added as Correct Gem)
for item in furnaceRemove{
    furnace.remove(item);
}


//Remove Charcoal Smelting
furnace.remove(<ore:charcoal>);


//Readd Steel, Certus, Magnetite, Fluorite, Uranium, Mercury, and Calcite Smelting
furnace.addRecipe(<ImmersiveEngineering:metal:7>, <ore:dustSteel>);
furnace.addRecipe(<advancedRocketry:miscpart:1>, <ReactorCraft:reactorcraft_item_crafting:13>);
furnace.addRecipe(<appliedenergistics2:item.ItemMultiMaterial> * 2, <RotaryCraft:rotarycraft_item_modextracts:39>);
furnace.addRecipe(<ReactorCraft:reactorcraft_item_fluorite:6> * 6, <RotaryCraft:rotarycraft_item_modextracts:211>);
furnace.addRecipe(<ReactorCraft:reactorcraft_item_ingots:0>, <ReactorCraft:reactorcraft_item_crafting:14>);
furnace.addRecipe(<Eln:Eln.sharedItem:520>, <RotaryCraft:rotarycraft_item_modextracts:47>);
furnace.addRecipe(<ReactorCraft:reactorcraft_item_raw:4>, <ore:stoneMarble>);
furnace.addRecipe(<ReactorCraft:reactorcraft_item_raw:4>, <ore:stoneLimestone>);
