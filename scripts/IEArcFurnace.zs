//Import
import mods.immersiveengineering.ArcFurnace;
import minetweaker.item.IItemStack;
import mods.nei.NEI.addEntry;



//Arc Furnace - Alloying
//Alloy Ingots to Remove
var alloysToRemove = [<ImmersiveEngineering:metal:6>,
                      <ImmersiveEngineering:metal:5>,
                      <ImmersiveEngineering:metal:7>,
                      <advancedRocketry:advancedRocketryproductingot:0>,
                      <advancedRocketry:advancedRocketryproductingot:1>,
                      <EnderIO:itemAlloy:0>,
                      <EnderIO:itemAlloy:1>,
                      <EnderIO:itemAlloy:2>,
                      <EnderIO:itemAlloy:4>,
                      <EnderIO:itemAlloy:5>,
                      <EnderIO:itemAlloy:6>,
			    ] as IItemStack[];

//Remove Arc Furnace Alloy Ingot Smelting
for item in alloysToRemove{
    ArcFurnace.removeRecipe(item);
}

//Alloying Recipes
//Miscelaneous
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:7>, <ore:dustIron>, <ImmersiveEngineering:material:13>, 400, 682, [<ore:dustCoke>], "Alloying");
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:7>, <ore:dustIron>, <ImmersiveEngineering:material:13>, 400, 682, [<ore:dustCharcoal>, <ore:dustCharcoal>], "Alloying");
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:5> * 2, <ore:dustNickel>, null, 100, 682, [<ore:dustCopper>], "Alloying");
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:6> * 2, <ore:dustGold>, null, 100, 682, [<ore:dustSilver>], "Alloying");
//Ender IO
ArcFurnace.addRecipe(<EnderIO:itemAlloy:0>, <RotaryCraft:rotarycraft_item_powders:14>, null, 400, 682, [<ore:dustSteel>], "Alloying");
ArcFurnace.addRecipe(<EnderIO:itemAlloy:1>, <ore:dustGold>, null, 200, 682, [<ore:dustRedstone>, <ore:dustGlowstone>], "Alloying");
ArcFurnace.addRecipe(<EnderIO:itemAlloy:2>, <customitems:energetic_alloy_dust>, null, 400, 682, [<ore:dustEnderPearl>], "Alloying");
ArcFurnace.addRecipe(<EnderIO:itemAlloy:3>, <RotaryCraft:rotarycraft_item_powders:14>, null, 200, 682, [<ore:dustRedstone>], "Alloying");
ArcFurnace.addRecipe(<EnderIO:itemAlloy:4>, <ore:dustIron>, null, 200, 682, [<ore:dustRedstone>], "Alloying");
ArcFurnace.addRecipe(<EnderIO:itemAlloy:5>, <ore:dustIron>, null, 200, 682, [<ore:dustEnderPearl>], "Alloying");
ArcFurnace.addRecipe(<EnderIO:itemAlloy:6>, <ore:dustIron>, null, 200, 682, [<ore:dustObsidian>, <ore:dustObsidian>, <ore:dustObsidian>, <ore:dustObsidian>, <RotaryCraft:rotarycraft_item_extracts:33>], "Alloying");
ArcFurnace.addRecipe(<EnderIO:itemAlloy:7>, <ore:dustGold>, null, 200, 682, [<minecraft:soul_sand>], "Alloying");
//High-Level Alloys
ArcFurnace.addRecipe(<Eln:Eln.sharedItem:9> * 4, <ore:dustTungsten>, <ImmersiveEngineering:material:13>, 400, 682, [<ore:dustSteel>, <ore:dustSteel>, <ore:dustSteel>, <ore:dustSteel>], "Alloying");
ArcFurnace.addRecipe(<advancedRocketry:advancedRocketryproductdust:0> * 4, <RotaryCraft:rotarycraft_item_powders:14>, <ImmersiveEngineering:material:13> * 4, 800, 2728, [<ore:dustTitanium>, <ore:dustTitanium>, <ore:dustTitanium>, <ore:dustAluminum>, <ore:dustAluminum>, <ore:dustAluminum>, <ore:dustAluminum>, <ore:dustAluminum>, <ore:dustAluminum>, <ore:dustAluminum>], "Alloying");
ArcFurnace.addRecipe(<advancedRocketry:advancedRocketryproductdust:1> * 2, <ore:dustIridium>, null, 800, 5436, [<ore:dustTitanium>], "Alloying");



//Arc Furnace - Smelting
//Smelting Ingots to Remove
var smeltingToRemove = [<minecraft:iron_ingot>,
                        <minecraft:gold_ingot>,
                        <libVulpes:libVulpesproductingot:5>,
                        <ImmersiveEngineering:metal>,
                        <ImmersiveEngineering:metal:2>,
                        <ImmersiveEngineering:metal:3>,
                        <ImmersiveEngineering:metal:4>,
                        <ReactorCraft:reactorcraft_item_ingots:1>,
                        <ReactorCraft:reactorcraft_item_ingots:2>,
                        <ImmersiveEngineering:metal:1>,
                        <Eln:Eln.sharedItem:517>,
                        <libVulpes:libVulpesproductingot:7>,
                        <RotaryCraft:rotarycraft_item_modingots:79>,
                        <RotaryCraft:rotarycraft_item_modingots:43>,
                        <libVulpes:libVulpesproductingot:10>,
                        <ImmersiveEngineering:metal:20>,
                        <libVulpes:libVulpesproductingot:3>,
                        <Eln:Eln.sharedItem:519>
                        ] as IItemStack[];
 
//Remove Arc Furnace Ingot Smelting
for item in smeltingToRemove{
    ArcFurnace.removeRecipe(item);
}

//Readd Ingot Smelting Recipes
ArcFurnace.addRecipe(<minecraft:iron_ingot>, <ore:dustIron>, null, 100, 682);
ArcFurnace.addRecipe(<minecraft:gold_ingot>, <ore:dustGold>, null, 100, 682);
ArcFurnace.addRecipe(<libVulpes:libVulpesproductingot:5>, <ore:dustTin>, null, 100, 682);
ArcFurnace.addRecipe(<ImmersiveEngineering:metal>, <ore:dustCopper>, null, 100, 682);
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:2>, <ore:dustLead>, null, 100, 682);
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:3>, <ore:dustSilver>, null, 100, 682);
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:4>, <ore:dustNickel>, null, 100, 682);
ArcFurnace.addRecipe(<ReactorCraft:reactorcraft_item_ingots>, <ReactorCraft:reactorcraft_item_crafting:14>, null, 100, 682);
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:20>, <ore:dustHOPGraphite>, null, 100, 682);
ArcFurnace.addRecipe(<libVulpes:libVulpesproductingot:3>, <libVulpes:libVulpesproductdust:3>, null, 100, 682);

//Readd Alloy Dust Recipes
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:7>, <ore:dustSteel>, null, 100, 682);
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:5>, <ore:dustConstantan>, null, 100, 682);
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:6>, <ore:dustElectrum>, null, 100, 682);
ArcFurnace.addRecipe(<Eln:Eln.sharedItem:519>, <ore:dustAlloy>, null, 100, 682);

//Arc Furnace - Miscelaneous
//Add Silicon and Annealed Copper Recipes
ArcFurnace.addRecipe(<libVulpes:libVulpesproductdust:3> * 2, <ore:dustNetherQuartz>, null, 800, 256, [<customitems:graphite_dust> * 2]);
ArcFurnace.addRecipe(<libVulpes:libVulpesproductdust:3>, <minecraft:sand>, <ImmersiveEngineering:material:13>, 800, 256, [<customitems:graphite_dust>]);
ArcFurnace.addRecipe(<customitems:annealedcopper>, <ore:ingotCopper>, null, 200, 682);

//Glassmaking Recipes
ArcFurnace.addRecipe(<EnderIO:blockFusedQuartz:1>, <minecraft:sand>, null, 100, 682);
ArcFurnace.addRecipe(<EnderIO:blockFusedQuartz:2>, <EnderIO:blockFusedQuartz>, null, 200, 682, [<ore:dustGlowstone>, <ore:dustGlowstone>, <ore:dustGlowstone>, <ore:dustGlowstone>]);
ArcFurnace.addRecipe(<EnderIO:blockFusedQuartz:3>, <EnderIO:blockFusedQuartz:1>, null, 200, 682, [<ore:dustGlowstone>, <ore:dustGlowstone>, <ore:dustGlowstone>, <ore:dustGlowstone>]);
ArcFurnace.addRecipe(<EnderIO:blockFusedQuartz:4>, <EnderIO:blockFusedQuartz>, null, 200, 682, [<ore:dyeBlack>, <ore:dyeBlack>, <ore:dyeBlack>, <ore:dyeBlack>]);



//Arc Furnace - Ores
ArcFurnace.addRecipe(<minecraft:iron_ingot> * 3, <ore:oreIron>, <ImmersiveEngineering:material:13>, 400, 682, [], "Ores");
ArcFurnace.addRecipe(<minecraft:gold_ingot> * 3, <ore:oreGold>, <ImmersiveEngineering:material:13>, 400, 682, [], "Ores");
ArcFurnace.addRecipe(<libVulpes:libVulpesproductingot:5> * 3, <ore:oreTin>, <ImmersiveEngineering:material:13>, 400, 682, [], "Ores");
ArcFurnace.addRecipe(<ImmersiveEngineering:metal> * 3, <ore:oreCopper>, <ImmersiveEngineering:material:13>, 400, 682, [], "Ores");
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:2> * 3, <ore:oreLead>, <ImmersiveEngineering:material:13>, 400, 682, [], "Ores");
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:3> * 3, <ore:oreSilver>, <ImmersiveEngineering:material:13>, 400, 682, [], "Ores");
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:4> * 3, <ore:oreNickel>, <ImmersiveEngineering:material:13>, 400, 682, [], "Ores");
ArcFurnace.addRecipe(<ReactorCraft:reactorcraft_item_ingots:1> * 3, <ore:oreCadmium>, <ImmersiveEngineering:material:13>, 400, 682, [], "Ores");
ArcFurnace.addRecipe(<ReactorCraft:reactorcraft_item_ingots:2> * 3, <ore:oreIndium>, <ImmersiveEngineering:material:13>, 400, 682, [], "Ores");
ArcFurnace.addRecipe(<ReactorCraft:reactorcraft_item_ingots> * 3, <ore:orePitchblende>, <ImmersiveEngineering:material:13>, 400, 682, [], "Ores");
ArcFurnace.addRecipe(<RotaryCraft:rotarycraft_item_modingots:84> * 3, <ore:oreThorium>, <ImmersiveEngineering:material:13>, 400, 682, [], "Ores");



//Arc Furnace - Recycling
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:0> * 4, <ImmersiveEngineering:storage:8>, <minecraft:iron_ingot>, 100, 512, [], "Recycling");
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:6> * 4, <ImmersiveEngineering:storage:9>, <minecraft:iron_ingot>, 100, 512, [], "Recycling");
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:7> * 2, <ImmersiveEngineering:storage:10>, <ImmersiveEngineering:metal:1> * 2, 100, 512, [], "Recycling");
ArcFurnace.addRecipe(<minecraft:iron_ingot> * 6, <ImmersiveEngineering:metalDevice:4>, <ImmersiveEngineering:metal:6> * 4, 100, 512, [], "Recycling");
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:0> * 4, <ImmersiveEngineering:metalDevice:9>, <minecraft:iron_ingot> * 4, 100, 512, [], "Recycling");
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:0> * 7, <ImmersiveEngineering:metalDevice:12>, <minecraft:iron_ingot> * 5, 100, 512, [], "Recycling");
ArcFurnace.addRecipe(<minecraft:iron_ingot> * 6, <ImmersiveEngineering:metalDevice:13>, <ImmersiveEngineering:metal:0>, 100, 512, [], "Recycling");
ArcFurnace.addRecipe(<minecraft:iron_ingot> * 8, <ImmersiveEngineering:metalDevice2:6>, <ImmersiveEngineering:metal:0>, 100, 512, [], "Recycling");
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:0> * 9, <ImmersiveEngineering:metalDevice2:2>, <minecraft:iron_ingot> * 8, 100, 512, [], "Recycling");
ArcFurnace.addRecipe(<minecraft:iron_ingot> * 8, <ImmersiveEngineering:metalDevice2:7>, null, 100, 512, [], "Recycling");
ArcFurnace.addRecipe(<minecraft:iron_ingot> * 2, <immersiveintegration:steelDecoration:0>, <ImmersiveEngineering:metal:29> * 5, 100, 512, [], "Recycling");
ArcFurnace.addRecipe(<minecraft:iron_ingot> * 2, <immersiveintegration:steelDecoration:2>, <ImmersiveEngineering:metal:7>, 100, 512, [], "Recycling");
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:7> * 3, <ImmersiveEngineering:material:7>, null, 100, 512, [], "Recycling");
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:7> * 4, <ImmersiveEngineering:material:8>, <minecraft:iron_ingot> * 2, 100, 512, [], "Recycling");
ArcFurnace.addRecipe(<minecraft:iron_ingot> * 2, <ImmersiveEngineering:material:11>, <ImmersiveEngineering:metal:0>, 100, 512, [], "Recycling");
ArcFurnace.addRecipe(<ImmersiveEngineering:metal:7> * 2, <ImmersiveEngineering:material:12>, null, 100, 512, [], "Recycling");
ArcFurnace.addRecipe(<minecraft:iron_ingot> * 4, <ImmersiveEngineering:metalMultiblock:2>, <ImmersiveEngineering:metal:0>, 100, 512, [], "Recycling");
ArcFurnace.addRecipe(<minecraft:iron_ingot> * 4, <ImmersiveEngineering:metalMultiblock:3>, <ImmersiveEngineering:metal:0>, 100, 512, [], "Recycling");
