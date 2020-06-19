//Import
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;



//Furnace Removal Array
var furnaceRemove = [//Ingots
                     <ore:ingotSteel>,
                     <ore:ingotAluminum>,
                     <ore:ingotTungsten>,
                     <ore:ingotTitanium>,
                     <ore:ingotRutile>,
                     <ore:ingotPlatinum>,
                     <ore:dustDilithium>,
                     <ore:ingotIridium>,
                     <ore:ingotUranium>,
                     <ore:ingotTitaniumAluminide>,
                     <ore:ingotTitaniumIridium>,
                     <ore:ingotAlloy>,
                     <RotaryCraft:rotarycraft_item_modingots:21>,
                     //Not-ingots not-gems
                     <ore:concrete>,
                     <EnderIO:itemMaterial:1>,
                     //Gems
                     <ore:itemCoal>,
                     <ore:dustRedstone>,
                     <ore:gemLapis>,
                     <ore:gemQuartz>,
                     <ore:gemDiamond>,
                     <ore:gemEmerald>,
                     <ore:crystalCertusQuartz>,
                     <ore:dustSulfur>,
                     <ore:dustAmmonium>,
                     <ore:gemRuby>,
                     <ore:gemCalcite>,
                     <ore:gemFluorite>,
                     <ore:gemMagnetite>
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
furnace.addRecipe(<ReactorCraft:reactorcraft_item_ingots>, <ReactorCraft:reactorcraft_item_crafting:14>);
furnace.addRecipe(<ReactorCraft:reactorcraft_item_raw:7>, <RotaryCraft:rotarycraft_item_modextracts:339>);
furnace.addRecipe(<Eln:Eln.sharedItem:520>, <RotaryCraft:rotarycraft_item_modextracts:47>);
furnace.addRecipe(<ReactorCraft:reactorcraft_item_raw:4>, <ore:stoneMarble>);
furnace.addRecipe(<ReactorCraft:reactorcraft_item_raw:4>, <ore:stoneLimestone>);
