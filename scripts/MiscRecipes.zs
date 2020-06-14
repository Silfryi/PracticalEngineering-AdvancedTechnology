//Import
import mods.nei.NEI.hide;
import minetweaker.item.IItemStack;
import mods.appeng.Inscriber;



//Arrays for removal and hiding
var toHide = [//<ExtraUtilities:decorativeBlock1:5>,
              //Minecraft diamond gear removals
              <minecraft:diamond_helmet>,
              <minecraft:diamond_chestplate>,
              <minecraft:diamond_leggings>,
              <minecraft:diamond_boots>,
              <minecraft:diamond_pickaxe>,
              <minecraft:diamond_axe>,
              <minecraft:diamond_sword>,
              <minecraft:diamond_shovel>,
              <minecraft:diamond_hoe>,
              //Other diamond gear removals
              <hammerz:DiamondHammer>,
              //NEI Clutter
              //Extra Cells
              <extracells:pattern.fluid>,
              //ArchitectureCraft
              <ArchitectureCraft:sawblade>,
              <ArchitectureCraft:largePulley>,
              //Aroma
              <Aroma1997Core:wrench>,
              //Remove high-tier makes no sense backpacks
              <ironbackpacks:ironBackpack>,
              <ironbackpacks:goldBackpack>,
              <ironbackpacks:diamondBackpack>,
              //Streams water and lava blocks
              <streams:river/tile.lava/-2/-2>,
              <streams:river/tile.lava/-2/-1>,
              <streams:river/tile.lava/-2/0>,
              <streams:river/tile.lava/-2/1>,
              <streams:river/tile.lava/-2/2>,
              <streams:river/tile.lava/-1/-2>,
              <streams:river/tile.lava/-1/2>,
              <streams:river/tile.lava/0/-2>,
              <streams:river/tile.lava/0/0>,
              <streams:river/tile.lava/0/2>,
              <streams:river/tile.lava/1/-2>,
              <streams:river/tile.lava/1/2>,
              <streams:river/tile.lava/2/-2>,
              <streams:river/tile.lava/2/-1>,
              <streams:river/tile.lava/2/0>,
              <streams:river/tile.lava/2/1>,
              <streams:river/tile.lava/2/2>,
              <streams:river/tile.water/-2/-2>,
              <streams:river/tile.water/-2/-1>,
              <streams:river/tile.water/-2/0>,
              <streams:river/tile.water/-2/1>,
              <streams:river/tile.water/-2/2>,
              <streams:river/tile.water/-1/-2>,
              <streams:river/tile.water/-1/2>,
              <streams:river/tile.water/0/-2>,
              <streams:river/tile.water/0/0>,
              <streams:river/tile.water/0/2>,
              <streams:river/tile.water/1/-2>,
              <streams:river/tile.water/1/2>,
              <streams:river/tile.water/2/-2>,
              <streams:river/tile.water/2/-1>,
              <streams:river/tile.water/2/0>,
              <streams:river/tile.water/2/1>,
              <streams:river/tile.water/2/2>,
              //Broken-texture Chisel stairs
              <chisel:aluminum_stairs.3>,
              <chisel:aluminum_stairs.4>,
              <chisel:aluminum_stairs.5>,
              <chisel:aluminum_stairs.6>,
              <chisel:aluminum_stairs.7>,
              //Broken WTF CaveBiomes blocks
              <CaveBiomes:Mummy_spawner>,
              <CaveBiomes:Pharoh_spawner>,
              <CaveBiomes:SkeletonKnight_spawner>,
              <CaveBiomes:SkeletonMage_spawner>,
              <CaveBiomes:Witch_spawner>,
              <CaveBiomes:DerangedGolem_spawner>,
              <CaveBiomes:mossy_dirt:1>,
              <CaveBiomes:dripping_water_stone>,
              <CaveBiomes:raining_water_stone>,
              <CaveBiomes:dripping_lava_stone>,
              <CaveBiomes:raining_lava_stone>,
              <CaveBiomes:mummy_helmet>,
              <CaveBiomes:mummy_chestplate>,
              <CaveBiomes:mummy_leggings>,
              <CaveBiomes:mummy_boots>,
              <CaveBiomes:pharaoh_helmet>,
              <CaveBiomes:pharaoh_chestplate>,
              <CaveBiomes:pharaoh_leggings>,
              <CaveBiomes:pharaoh_boots>,
              <CaveBiomes:frozen_fence:*>,
              <CaveBiomes:frozen_roots:*>,
              <CaveBiomes:frozen_rail:*>,
              <CaveBiomes:frozen_redstone_stalactite_small:*>,
              <CaveBiomes:frozen_redstone_stalactite_base:*>,
              <CaveBiomes:frozen_redstone_stalactite_tip:*>,
              <CaveBiomes:frozen_redstone_column:*>,
              <CaveBiomes:frozen_redstone_stalagmite_small:*>,
              <CaveBiomes:frozen_redstone_stalagmite_base:*>,
              <CaveBiomes:frozen_redstone_stalagmite_tip:*>,
              <CaveBiomes:frozen_lit_redstone_stalactite_small:*>,
              <CaveBiomes:frozen_lit_redstone_stalactite_base:*>,
              <CaveBiomes:frozen_lit_redstone_stalactite_tip:*>,
              <CaveBiomes:frozen_lit_redstone_column:*>,
              <CaveBiomes:frozen_lit_redstone_stalagmite_small:*>,
              <CaveBiomes:frozen_lit_redstone_stalagmite_base:*>,
              <CaveBiomes:frozen_lit_redstone_stalagmite_tip:*>,
              <CaveBiomes:frozen_stone_stalactite_small:*>,
              <CaveBiomes:frozen_stone_stalactite_base:*>,
              <CaveBiomes:frozen_stone_stalactite_tip:*>,
              <CaveBiomes:frozen_stone_column:*>,
              <CaveBiomes:frozen_stone_stalagmite_small:*>,
              <CaveBiomes:frozen_stone_stalagmite_base:*>,
              <CaveBiomes:frozen_stone_stalagmite_tip:*>,
              <CaveBiomes:frozen_sandstone_stalactite_small:*>,
              <CaveBiomes:frozen_sandstone_stalactite_base:*>,
              <CaveBiomes:frozen_sandstone_stalactite_tip:*>,
              <CaveBiomes:frozen_sandstone_column:*>,
              <CaveBiomes:frozen_sandstone_stalagmite_small:*>,
              <CaveBiomes:frozen_sandstone_stalagmite_base:*>,
              <CaveBiomes:frozen_sandstone_stalagmite_tip:*>,
              //AromaCore item
              <Aroma1997Core:wrenched>,
              //Carpenter's blocks
              <CarpentersBlocks:blockCarpentersBed>,
              //ArchitechtureCraft
              <ArchitectureCraft:cladding>
              ] as IItemStack[];

var toRemove = [<libVulpes:libVulpesproductingot:9>,
                <ExtraUtilities:drum>,
                <ArchitectureCraft:sawbench>,
                <appliedenergistics2:tile.BlockController>,
                <extracells:pattern.fluid>,
                <ExtraUtilities:decorativeBlock1:12>,
                //Quantum needs platinum
                <appliedenergistics2:tile.BlockQuantumLinkChamber>,
                <appliedenergistics2:tile.BlockQuantumRing>,
                //Re-do machines that need diamond tools
                <minecraft:nether_star>,
                <ExpandedRedstone:expanded redstone_item_placer:1>,
                <Railcraft:cart.track.relayer>,
                <Railcraft:cart.undercutter>,
                //Remove diamonds from machines that don't need them and replace with more fitting alternatives
                <minecraft:jukebox>,
                <StorageDrawers:controller>
                ] as IItemStack[];

//Remove and hide what all needs it
for item in toRemove{
    recipes.remove(item);
}
for item in toHide{
    recipes.remove(item);
    hide(item);
}



//Shaped recipes, mostly Extra Utilities and AE2
//StorageDrawers Controller
recipes.addShaped(<StorageDrawers:controller>,
 [[<ore:stone>, <ore:stone>, <ore:stone>],
 [<minecraft:comparator>, <ore:drawerBasic>, <minecraft:comparator>],
 [<ore:stone>, <RotaryCraft:rotarycraft_item_machine:85>, <ore:stone>]]);
//RailCraft carts
recipes.addShaped(<Railcraft:cart.track.relayer>,
 [[<ore:dyeYellow>, <minecraft:redstone_lamp>, <ore:dyeYellow>],
 [<minecraft:piston>, <ore:blockSteel>, <minecraft:piston>],
 [<RotaryCraft:rotarycraft_item_borecraft>, <minecraft:minecart>, <RotaryCraft:rotarycraft_item_shaftcraft:15>]]);
recipes.addShaped(<Railcraft:cart.undercutter>,
 [[<ore:dyeYellow>, <minecraft:redstone_lamp>, <ore:dyeYellow>],
 [<minecraft:piston>, <ore:blockSteel>, <minecraft:piston>],
 [<RotaryCraft:rotarycraft_item_borecraft>, <minecraft:minecart>, <minecraft:hopper>]]);
//ExR Block Breakers
recipes.addShaped(<ExpandedRedstone:expanded redstone_item_placer:1>.withTag({nbt: 0, dmg: 128}),
 [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
 [<ore:cobblestone>, <minecraft:wooden_pickaxe>, <ore:cobblestone>],
 [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);
recipes.addShaped(<ExpandedRedstone:expanded redstone_item_placer:1>.withTag({nbt: 1, dmg: 128}),
 [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
 [<ore:cobblestone>, <minecraft:stone_pickaxe>, <ore:cobblestone>],
 [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);
recipes.addShaped(<ExpandedRedstone:expanded redstone_item_placer:1>.withTag({nbt: 2, dmg: 128}),
 [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
 [<ore:cobblestone>, <minecraft:iron_pickaxe>, <ore:cobblestone>],
 [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);
recipes.addShaped(<ExpandedRedstone:expanded redstone_item_placer:1>.withTag({nbt: 3, dmg: 128}),
 [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
 [<ore:cobblestone>, <RotaryCraft:rotarycraft_item_steelpick>, <ore:cobblestone>],
 [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);
//Jukebox requires HSLA shaft to make it come earlier and remove diamond uses
recipes.addShaped(<minecraft:jukebox>,
 [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
 [<ore:plankWood>, <RotaryCraft:rotarycraft_item_gearcraft>, <ore:plankWood>],
 [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
//Deduplicate saws & similar, ArchitectureCraft
recipes.addShaped(<ArchitectureCraft:sawbench>,
 [[<ore:ingotIron>, <RotaryCraft:rotarycraft_item_borecraft:7>, <ore:ingotIron>],
 [<ore:stickWood>, <RotaryCraft:rotarycraft_item_gearcraft:1>, <ore:stickWood>],
 [<ore:stickWood>, <minecraft:wooden_pressure_plate>, <ore:stickWood>]]);
//Random CustomItems recipes
recipes.addShaped(<customitems:red_sandstone_stairs> * 4,
 [[<customitems:red_sandstone>, null, null],
 [<customitems:red_sandstone>, <customitems:red_sandstone>, null],
 [<customitems:red_sandstone>, <customitems:red_sandstone>, <customitems:red_sandstone>]]);
recipes.addShaped(<customitems:chiseled_red_sandstone>,
 [[<customitems:red_sandstone_slab>],
 [<customitems:red_sandstone_slab>]]);
recipes.addShaped(<customitems:red_sandstone_slab> * 6,
 [[<customitems:red_sandstone>, <customitems:red_sandstone>, <customitems:red_sandstone>]]);
recipes.addShaped(<customitems:smooth_red_sandstone> * 4,
 [[<customitems:red_sandstone>, <customitems:red_sandstone>],
 [<customitems:red_sandstone>, <customitems:red_sandstone>]]);
recipes.addShaped(<customitems:red_sandstone>,
 [[<minecraft:sand:1>, <minecraft:sand:1>],
 [<minecraft:sand:1>, <minecraft:sand:1>]]);
recipes.addShaped(<customitems:chiseled_dark_quartz>,
 [[<customitems:dark_quartz_slab>],
 [<customitems:dark_quartz_slab>]]);
recipes.addShaped(<customitems:dark_quartz_slab> * 6,
 [[<customitems:dark_quartz>, <customitems:dark_quartz>, <customitems:dark_quartz>]]);
recipes.addShaped(<customitems:dark_quartz_pillar> * 2,
 [[<customitems:dark_quartz>],
 [<customitems:dark_quartz>]]);
recipes.addShaped(<customitems:dark_quartz> * 8,
 [[<ore:burntQuartz>, <ore:burntQuartz>, <ore:burntQuartz>],
 [<ore:burntQuartz>, <ore:dyeBlue>, <ore:burntQuartz>],
 [<ore:burntQuartz>, <ore:burntQuartz>, <ore:burntQuartz>]]);
//Aluminium for previously iron-only recipes
recipes.addShaped(<minecraft:piston>,
 [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
 [<ore:cobblestone>, <ore:ingotAluminum>, <ore:cobblestone>],
 [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);
recipes.addShaped(<minecraft:hopper>,
 [[<ore:ingotAluminum>, null, <ore:ingotAluminum>],
 [<ore:ingotAluminum>, <ore:chest>, <ore:ingotAluminum>],
 [null, <ore:ingotAluminum>, null]]);
//ExU drums
recipes.addShaped(<ExtraUtilities:drum>, 
 [[<RotaryCraft:rotarycraft_item_shaftcraft:1>, <RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_shaftcraft:1>],
 [<RotaryCraft:rotarycraft_item_shaftcraft:1>, <RotaryCraft:rotarycraft_item_machine:18>, <RotaryCraft:rotarycraft_item_shaftcraft:1>],
 [<RotaryCraft:rotarycraft_item_shaftcraft:1>, <RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_shaftcraft:1>]]);
//ME wireless platinum additions
recipes.addShaped(<appliedenergistics2:tile.BlockQuantumRing>,
 [[<ore:ingotPlatinum>, <appliedenergistics2:item.ItemMultiMaterial:22>, <ore:ingotPlatinum>],
 [<appliedenergistics2:item.ItemMultiMaterial:24>, <appliedenergistics2:tile.BlockDenseEnergyCell>, <appliedenergistics2:item.ItemMultiPart:76>],
 [<ore:ingotPlatinum>, <appliedenergistics2:item.ItemMultiMaterial:22>, <ore:ingotPlatinum>]]);
recipes.addShaped(<appliedenergistics2:tile.BlockQuantumLinkChamber>,
 [[<ore:ingotPlatinum>, <ore:pearlFluix>, <ore:ingotPlatinum>],
 [<ore:pearlFluix>, null, <ore:pearlFluix>],
 [<ore:ingotPlatinum>, <ore:pearlFluix>, <ore:ingotPlatinum>]]);
//AE2 printed silicon recipes
Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:20>);
Inscriber.addRecipe([<advancedRocketry:wafer>], <appliedenergistics2:item.ItemMultiMaterial:19>, null, <appliedenergistics2:item.ItemMultiMaterial:20> * 4, "Inscribe");
Inscriber.addRecipe([<RotaryCraft:rotarycraft_item_compacts:10>], <appliedenergistics2:item.ItemMultiMaterial:19>, null, <appliedenergistics2:item.ItemMultiMaterial:20>, "Inscribe");
//AE2 controller
recipes.addShaped(<appliedenergistics2:tile.BlockController>, 
 [[<RotaryCraft:rotarycraft_item_compacts:11>, <appliedenergistics2:item.ItemMultiMaterial:12>, <RotaryCraft:rotarycraft_item_compacts:11>],
 [<appliedenergistics2:item.ItemMultiMaterial:12>, <appliedenergistics2:item.ItemMultiMaterial:24>, <appliedenergistics2:item.ItemMultiMaterial:12>],
 [<RotaryCraft:rotarycraft_item_compacts:11>, <appliedenergistics2:item.ItemMultiMaterial:12>, <RotaryCraft:rotarycraft_item_compacts:11>]]);
//DMLS beds
recipes.addShaped(<customitems:dmlsbed>,
 [[null, <RotaryCraft:rotarycraft_item_gearcraft:118>, null],
 [<RotaryCraft:rotarycraft_item_machine:18>, <RotaryCraft:rotarycraft_item_shaftcraft:15>, <RotaryCraft:rotarycraft_item_machine:18>],
 [<PneumaticCraft:pneumaticCilinder>, <RotaryCraft:rotarycraft_item_shaftcraft:3>, <PneumaticCraft:pneumaticCilinder>]]);
//Catwalks blowtorch
recipes.remove(<catwalks:blowtorch>);
recipes.addShaped(<catwalks:blowtorch>,
 [[null, <ImmersiveEngineering:toolupgrade>, <ImmersiveEngineering:material:9>],
 [<ore:stickAluminum>, <ImmersiveEngineering:metalDevice2:7>.withTag({tank: {FluidName: "kerosene", Amount: 12000}}), <ImmersiveEngineering:material:9>],
 [<ImmersiveEngineering:toolupgrade:7>, <minecraft:flint_and_steel>, null]]);
 

 
//Shapeless recipes, conversion recipes
//Conversion to More Manageable Variants
recipes.addShapeless(<minecraft:quartz> * 4, [<minecraft:quartz_block>]);
recipes.addShapeless(<minecraft:netherbrick> * 4, [<minecraft:nether_brick>]);



//Special EnderStorage removal
var enderChests = [<EnderStorage:enderChest:0>,
                   <EnderStorage:enderChest:273>,
                   <EnderStorage:enderChest:546>,
                   <EnderStorage:enderChest:819>,
                   <EnderStorage:enderChest:1092>,
                   <EnderStorage:enderChest:1365>,
                   <EnderStorage:enderChest:1638>,
                   <EnderStorage:enderChest:1911>,
                   <EnderStorage:enderChest:2184>,
                   <EnderStorage:enderChest:2457>,
                   <EnderStorage:enderChest:2730>,
                   <EnderStorage:enderChest:3003>,
                   <EnderStorage:enderChest:3276>,
                   <EnderStorage:enderChest:3549>,
                   <EnderStorage:enderChest:3822>,
                   <EnderStorage:enderChest:4095>,
				   <EnderStorage:enderPouch:*>	
	               ] as IItemStack[];			
		   
for item in enderChests{
    recipes.remove(item);
	//hide(item);
}


