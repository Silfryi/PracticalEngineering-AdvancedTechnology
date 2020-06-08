//Import
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.Squeezer;
import mods.immersiveengineering.Refinery;
import mods.immersiveengineering.Excavator;
import minetweaker.item.IItemStack;
import mods.nei.NEI.addEntry;


//Fix Blast and Coke Brick Recipes
recipes.remove(<ImmersiveEngineering:stoneDecoration:1>);
recipes.remove(<ImmersiveEngineering:stoneDecoration:2>);
recipes.remove(<ImmersiveEngineering:metalDevice:5>);
recipes.remove(<ImmersiveEngineering:drill>);
recipes.remove(<immersiveintegration:steelDecoration:0>);
recipes.remove(<immersiveintegration:steelDecoration:1>);
recipes.remove(<immersiveintegration:steelDecoration:2>);
recipes.addShaped(<ImmersiveEngineering:stoneDecoration:1> * 3,
 [[<ore:ingotBrick>, <ore:itemClay>, <ore:ingotBrick>],
 [<ore:itemClay>, <ore:sandstone>, <ore:itemClay>],
 [<ore:ingotBrick>, <ore:itemClay>, <ore:ingotBrick>]]);
/*
recipes.addShaped(<ImmersiveEngineering:stoneDecoration:2> * 3,
 [[<ore:ingotBrickNether>, <ore:ingotBrick>, <ore:ingotBrickNether>],
 [<ore:ingotBrick>, <ore:itemBlazePowder>, <ore:ingotBrick>],
 [<ore:ingotBrickNether>, <ore:ingotBrick>, <ore:ingotBrickNether>]]);
*/
recipes.addShaped(<ImmersiveEngineering:stoneDecoration:2> * 3,
 [[<ore:ingotBrick>, <ore:plateIron>, <ore:ingotBrick>],
 [<ore:plateIron>, <ore:itemBlazePowder>, <ore:plateIron>],
 [<ore:ingotBrick>, <ore:plateIron>, <ore:ingotBrick>]]);
recipes.addShaped(<immersiveintegration:steelDecoration> * 8,
 [[<ore:ingotIron>, <ImmersiveEngineering:metalDecoration:10>, <ore:ingotIron>],
 [<ImmersiveEngineering:material:12>, <ImmersiveEngineering:metalDecoration:1>, <ImmersiveEngineering:material:12>],
 [<ore:ingotIron>, <ImmersiveEngineering:metalDevice2:7>, <ore:ingotIron>]]);
recipes.addShaped(<immersiveintegration:steelDecoration:1> * 8,
 [[<ore:ingotIron>, <ImmersiveEngineering:metalDecoration:10>, <ore:ingotIron>],
 [<ImmersiveEngineering:material:12>, <ImmersiveEngineering:metalDecoration:1>, <ImmersiveEngineering:material:12>],
 [<ore:ingotIron>, <ImmersiveEngineering:storage:8>, <ore:ingotIron>]]);
recipes.addShaped(<immersiveintegration:steelDecoration:2> * 4,
 [[<ore:ingotIron>, <ImmersiveEngineering:metalDecoration:10>, <ore:ingotIron>],
 [<ImmersiveEngineering:material:12>, <ImmersiveEngineering:metalDecoration:1>, <ImmersiveEngineering:material:12>],
 [<ore:ingotIron>, <ImmersiveEngineering:metalDevice2:5>, <ore:ingotIron>]]);
recipes.addShaped(<ImmersiveEngineering:metalDevice:5> * 8,
 [[<ImmersiveEngineering:stoneDevice:4>, <ore:ingotAluminium>, <ImmersiveEngineering:stoneDevice:4>],
 [null, <ore:ingotAluminium>, null],
 [<ImmersiveEngineering:stoneDevice:4>, <ore:ingotAluminium>, <ImmersiveEngineering:stoneDevice:4>]]);
recipes.addShaped(<ImmersiveEngineering:drill>,
 [[null, null, <ImmersiveEngineering:material:9>],
 [<ore:stickSteel>, <ImmersiveEngineering:metalDecoration:5>, <ImmersiveEngineering:material:9>],
 [<ImmersiveEngineering:material:12>, <ore:plateSteel>, null]]);

//Add Gunpowder Recipe
recipes.addShaped(<minecraft:gunpowder> * 4,
 [[<ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustSaltpeter>],
 [<ore:dustSaltpeter>, <ore:dustSulfur>, <ore:dustCharcoal>]]);

//Add RoC HSLA Drill to Core Sample Drill, as it's the drill that doesn't dig a huge area
recipes.remove(<ImmersiveEngineering:metalDevice:14>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:14>,
 [[<ImmersiveEngineering:metalDecoration:1>, <ore:fenceSteel>, <ImmersiveEngineering:metalDecoration:1>],
 [<ImmersiveEngineering:metalDecoration:1>, <ore:fenceSteel>, <ImmersiveEngineering:metalDecoration:1>],
 [<ImmersiveEngineering:metalDecoration:7>, <RotaryCraft:rotarycraft_item_borecraft>, <ImmersiveEngineering:metalDecoration:7>]]);

//Add rubber conveyor belt recipe
recipes.addShaped(<ImmersiveEngineering:metalDevice:11> * 8,
 [[<ore:sheetRubber>, <ore:sheetRubber>, <ore:sheetRubber>],
 [<ore:plateIron>, <ore:dustRedstone>, <ore:plateIron>]]);
 
//Make Squeezer and Fermenter Require PneumaticCraft Plastic
Squeezer.removeFluidRecipe(<liquid:plantoil>);
Squeezer.addRecipe(null, <liquid:plantoil> * 40, <RotaryCraft:rotarycraft_item_canola>, 20);
Squeezer.addRecipe(null, <liquid:plantoil> * 80, <minecraft:wheat_seeds>, 80);
Squeezer.addRecipe(null, <liquid:plantoil> * 80, <minecraft:pumpkin_seeds>, 80);
Squeezer.addRecipe(null, <liquid:plantoil> * 80, <minecraft:melon_seeds>, 80);
Squeezer.addRecipe(null, <liquid:plantoil> * 120, <ImmersiveEngineering:seed>, 80);
recipes.remove(<ImmersiveEngineering:metalMultiblock:2>);
recipes.remove(<ImmersiveEngineering:metalMultiblock:3>);
recipes.addShaped(<ImmersiveEngineering:metalMultiblock:2> * 2,
 [[<ore:ingotIron>, <minecraft:piston>, <ore:ingotIron>],
 [<ImmersiveEngineering:material:11>, <PneumaticCraft:plastic:2>, <ImmersiveEngineering:material:11>],
 [<ore:ingotIron>, <minecraft:piston>, <ore:ingotIron>]]);
recipes.addShaped(<ImmersiveEngineering:metalMultiblock:3> * 2,
 [[<ore:ingotIron>, <minecraft:piston>, <ore:ingotIron>],
 [<ImmersiveEngineering:material:11>, <PneumaticCraft:plastic:4>, <ImmersiveEngineering:material:11>],
 [<ore:ingotIron>, <minecraft:piston>, <ore:ingotIron>]]);
 
//Remake Generator and Radiator Block Recipes
recipes.remove(<ImmersiveEngineering:metalDecoration:4>);
recipes.remove(<ImmersiveEngineering:metalDecoration:6>);
recipes.addShaped(<ImmersiveEngineering:metalDecoration:4> * 3,
 [[<ore:ingotSteel>, <RotaryCraft:rotarycraft_item_machine:74>, <ore:ingotSteel>],
 [<ore:plateConstantan>, <minecraft:water_bucket>, <ore:plateConstantan>],
 [<ore:ingotSteel>, <ImmersiveEngineering:metalDevice2:5>, <ore:ingotSteel>]]);
recipes.addShaped(<ImmersiveEngineering:metalDecoration:6> * 2,
 [[<ore:ingotSteel>, <ImmersiveEngineering:storage:9>, <ore:ingotSteel>],
 [<ore:stickSteel>, <ImmersiveEngineering:material:12>, <ore:stickSteel>],
 [<ore:ingotSteel>, <ImmersiveEngineering:storage:9>, <ore:ingotSteel>]]);
 
//Wire Coil Crafting
recipes.remove(<ImmersiveEngineering:coil:0>);
recipes.remove(<ImmersiveEngineering:coil:1>);
recipes.remove(<ImmersiveEngineering:coil:2>);
recipes.remove(<ImmersiveEngineering:coil:4>);
recipes.remove(<immersiveintegration:iiWireCoil:0>);
recipes.addShaped(<ImmersiveEngineering:coil:0> * 4,
 [[null, <customitems:copper_wire>, null],
 [<customitems:copper_wire>, <ore:treatedStick>, <customitems:copper_wire>],
 [null, <customitems:copper_wire>, null]]);
recipes.addShaped(<ImmersiveEngineering:coil:0> * 4,
 [[null, <customitems:copper_wire>, null],
 [<customitems:copper_wire>, <ore:treatedStick>, <customitems:copper_wire>],
 [null, <customitems:copper_wire>, null]]);
recipes.addShaped(<ImmersiveEngineering:coil:1> * 4,
 [[null, <customitems:electrum_wire>, null],
 [<customitems:electrum_wire>, <ore:treatedStick>, <customitems:electrum_wire>],
 [null, <customitems:electrum_wire>, null]]);
recipes.addShaped(<ImmersiveEngineering:coil:2> * 4,
 [[null, <customitems:aluminium_wire>, null],
 [<customitems:steel_wire>, <ore:treatedStick>, <customitems:steel_wire>],
 [null, <customitems:aluminium_wire>, null]]);
recipes.addShaped(<ImmersiveEngineering:coil:4> * 4,
 [[null, <customitems:steel_wire>, null],
 [<customitems:steel_wire>, <ore:treatedStick>, <customitems:steel_wire>],
 [null, <customitems:steel_wire>, null]]);
recipes.addShaped(<immersiveintegration:iiWireCoil:0> * 4,
 [[null, <customitems:aluminium_wire>, null],
 [<minecraft:redstone>, <ore:treatedStick>, <minecraft:redstone>],
 [null, <customitems:aluminium_wire>, null]]);
recipes.addShapeless(<customitems:copper_wire>, [<ore:plateCopper>, <ImmersiveEngineering:tool:1>.reuse()]);
recipes.addShapeless(<customitems:electrum_wire>, [<ore:plateElectrum>, <ImmersiveEngineering:tool:1>.reuse()]);
recipes.addShapeless(<customitems:aluminium_wire>, [<ore:plateAluminum>, <ImmersiveEngineering:tool:1>.reuse()]);
recipes.addShapeless(<customitems:steel_wire>, [<ore:plateSteel>, <ImmersiveEngineering:tool:1>.reuse()]);
recipes.addShapeless(<ImmersiveEngineering:metal:31>, [<ore:ingotCopper>, <ImmersiveEngineering:tool>.marked("hammer")], function(output, inputs, crafting) {
    return <ImmersiveEngineering:metal:31>;
    return inputs.hammer.withTag({hammerDmg:max(0, inputs.hammer.damage - 1)});
});
//Mold Crafting
recipes.remove(<ImmersiveEngineering:mold>);
recipes.remove(<ImmersiveEngineering:mold:1>);
recipes.remove(<ImmersiveEngineering:mold:2>);
recipes.addShaped(<ImmersiveEngineering:mold:0>,
 [[<ore:plateSteel>, <ore:plateSteel>, null],
 [<ore:plateSteel>, <ore:plateSteel>, null],
 [<ImmersiveEngineering:tool:1>.reuse(), null, null]]);
recipes.addShaped(<ImmersiveEngineering:mold:1>,
 [[<ore:plateSteel>, <ore:plateSteel>, null],
 [<ore:plateSteel>, <ore:plateSteel>, null],
 [null, <ImmersiveEngineering:tool:1>.reuse(), null]]);
recipes.addShaped(<ImmersiveEngineering:mold:2>,
 [[<ore:plateSteel>, <ore:plateSteel>, null],
 [<ore:plateSteel>, <ore:plateSteel>, null],
 [null, null, <ImmersiveEngineering:tool:1>.reuse()]]);
recipes.addShaped(<customitems:wire_mold>,
 [[<ore:plateSteel>, <ore:plateSteel>, <ImmersiveEngineering:tool:1>.reuse()],
 [<ore:plateSteel>, <ore:plateSteel>, null],
 [null, null, null]]);
recipes.addShaped(<customitems:casing_mold>,
 [[<ore:plateSteel>, <ore:plateSteel>, null],
 [<ore:plateSteel>, <ore:plateSteel>, <ImmersiveEngineering:tool:1>.reuse()],
 [null, null, null]]);
//Component Cheaper Crafting
recipes.addShapeless(<ImmersiveEngineering:material:12>, [<ore:ingotNickel>, <ore:plateSteel>, <ore:plateSteel>, <ImmersiveEngineering:tool:1>.reuse(), <ImmersiveEngineering:tool>.marked("hammer")], function(output, inputs, crafting) {
    return <ImmersiveEngineering:material:12>;
    return inputs.hammer.withTag({hammerDmg:max(0, inputs.hammer.damage - 1)});
});
recipes.addShapeless(<ImmersiveEngineering:material:11>, [<ore:ingotCopper>, <ore:plateIron>, <ore:plateIron>, <ImmersiveEngineering:tool:1>.reuse(), <ImmersiveEngineering:tool>.marked("hammer")], function(output, inputs, crafting) {
    return <ImmersiveEngineering:material:11>;
    return inputs.hammer.withTag({hammerDmg:max(0, inputs.hammer.damage - 1)});
});

//Steel Tools
recipes.addShaped(<customitems:steel_pickaxe>,
 [[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
 [null, <ore:treatedStick>, null],
 [null, <ore:treatedStick>, null]]);
recipes.addShapedMirrored(<customitems:steel_axe>,
 [[<ore:ingotSteel>, <ore:ingotSteel>, null],
 [<ore:ingotSteel>, <ore:treatedStick>, null],
 [null, <ore:treatedStick>, null]]);
recipes.addShaped(<customitems:steel_shovel>,
 [[<ore:ingotSteel>],
 [<ore:treatedStick>],
 [<ore:treatedStick>]]);
recipes.addShaped(<customitems:steel_sword>,
 [[<ore:ingotSteel>],
 [<ore:ingotSteel>],
 [<ore:treatedStick>]]);
//IE Drillheads, recipe tweaks and heads with more durability
recipes.remove(<ImmersiveEngineering:drillhead:1>);
recipes.addShaped(<ImmersiveEngineering:drillhead:1>,
 [[null, <ore:ingotIron>, <ore:ingotIron>],
 [<ore:ingotIron>, <ore:blockIron>, <ore:ingotIron>],
 [<ore:blockIron>, <ore:ingotIron>, null]]);
recipes.remove(<ImmersiveEngineering:drillhead>);
recipes.addShaped(<ImmersiveEngineering:drillhead>,
 [[null, <ore:ingotSteel>, <ore:ingotSteel>],
 [<ore:ingotSteel>, <ore:blockSteel>, <ore:ingotSteel>],
 [<ore:blockSteel>, <ore:ingotSteel>, null]]);
recipes.addShaped(<ImmersiveEngineering:drillhead>.withTag({headDamage: -2000}),
 [[null, <ore:ingotHSLA>, <ore:ingotHSLA>],
 [<ore:ingotHSLA>, <ore:blockSteel>, <ore:ingotHSLA>],
 [<ore:blockSteel>, <ore:ingotHSLA>, null]]);
recipes.addShaped(<ImmersiveEngineering:drillhead>.withTag({headDamage: -16000}),
 [[null, <ore:ingotAlloy>, <ore:ingotAlloy>],
 [<ore:ingotAlloy>, <ore:blockSteel>, <ore:ingotAlloy>],
 [<ore:blockSteel>, <ore:ingotAlloy>, null]]);
recipes.addShaped(<ImmersiveEngineering:drillhead>.withTag({headDamage: -24000}),
 [[null, <ore:ingotTungsten>, <ore:ingotTungsten>],
 [<ore:ingotTungsten>, <ore:blockSteel>, <ore:ingotTungsten>],
 [<ore:blockSteel>, <ore:ingotTungsten>, null]]);

//Advanced windmill sails recipe closer to 1.12
recipes.remove(<ImmersiveEngineering:material:5>);
recipes.addShaped(<ImmersiveEngineering:material:5>,
 [[<ore:fabricHemp>, <ore:fabricHemp>, null],
 [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>],
 [null, <ore:fabricHemp>, <ImmersiveEngineering:material:2>]]);

 
//Blast Furnace
//Remove Steel Block Blast Furnace Recipe
BlastFurnace.removeRecipe(<ImmersiveEngineering:storage:7>);
BlastFurnace.addFuel(<customitems:charcoal_dust>, 600);


//Metal Press
//Add in Metal Press Miscelaneous Recipes
MetalPress.removeRecipe(<Eln:Eln.sharedItem:7691>);
MetalPress.addRecipe(<ReactorCraft:reactorcraft_item_crafting:8>, <minecraft:gold_ingot>, <ImmersiveEngineering:mold:2>, 2400);
MetalPress.addRecipe(<RotaryCraft:rotarycraft_item_gearcraft> * 2, <ore:ingotHSLA>, <ImmersiveEngineering:mold:2>, 3600);
MetalPress.addRecipe(<RotaryCraft:rotarycraft_item_gearcraft:112> * 2, <RotaryCraft:rotarycraft_item_compacts:12>, <ImmersiveEngineering:mold:2>, 3600);
MetalPress.addRecipe(<RotaryCraft:rotarycraft_item_shaftcraft>, <ore:ingotHSLA>, <ImmersiveEngineering:mold>, 3600);
MetalPress.addRecipe(<ImmersiveEngineering:bullet> * 2, <ore:ingotCopper>, <customitems:casing_mold>, 2400);

//Metal Press Sheet Recipes
MetalPress.addRecipe(<libVulpes:libVulpesproductsheet:1>, <ore:plateIron>, <ImmersiveEngineering:mold>, 3600);
MetalPress.addRecipe(<libVulpes:libVulpesproductsheet:4>, <ore:plateCopper>, <ImmersiveEngineering:mold>, 3600);
MetalPress.addRecipe(<libVulpes:libVulpesproductsheet:6>, <ore:plateSteel>, <ImmersiveEngineering:mold>, 3600);
MetalPress.addRecipe(<libVulpes:libVulpesproductsheet:7>, <ore:plateTitanium>, <ImmersiveEngineering:mold>, 3600);
MetalPress.addRecipe(<libVulpes:libVulpesproductsheet:9>, <ore:plateAluminum>, <ImmersiveEngineering:mold>, 3600);
MetalPress.addRecipe(<advancedRocketry:advancedRocketryproductsheet:0>, <ore:plateTitaniumAluminide>, <ImmersiveEngineering:mold>, 3600);
MetalPress.addRecipe(<advancedRocketry:advancedRocketryproductsheet:1>, <ore:plateTitaniumIridium>, <ImmersiveEngineering:mold>, 3600);

//Metal Press Wire Recipes
MetalPress.addRecipe(<customitems:copper_wire> * 2, <ore:ingotCopper>, <customitems:wire_mold>, 3600);
MetalPress.addRecipe(<customitems:electrum_wire> * 2, <ore:ingotElectrum>, <customitems:wire_mold>, 3600);
MetalPress.addRecipe(<customitems:aluminium_wire> * 2, <ore:ingotAluminium>, <customitems:wire_mold>, 3600);
MetalPress.addRecipe(<customitems:steel_wire> * 2, <ore:ingotSteel>, <customitems:wire_mold>, 3600);
MetalPress.addRecipe(<customitems:annealedcopperwire> * 2, <customitems:annealedcopper>, <customitems:wire_mold>, 2400);

//Remove Silicon Plate Recipe
MetalPress.removeRecipe(<libVulpes:libVulpesproductplate:3>);


//Crusher
//Ores And Dusts to Remove
var oresToRemove = [<ImmersiveEngineering:metal:11>,
                    <RotaryCraft:rotarycraft_item_modingots:21>,
                    <libVulpes:libVulpesproductdust:7>,
                    <libVulpes:libVulpesproductdust:10>,
                    <ReactorCraft:reactorcraft_item_raw:3>,
                    <RotaryCraft:rotarycraft_item_modingots:52>,
                    <ReactorCraft:reactorcraft_item_raw:5>,
                    <ReactorCraft:reactorcraft_item_raw:6>,
                    <RotaryCraft:rotarycraft_item_modingots:87>,
                    <libVulpes:libVulpesproductdust:3>,
                    <Eln:Eln.sharedItem:9>
			        ] as IItemStack[];

//Remove Crusher Ore Special Processing and Wrong Gem Processing
for item in oresToRemove{
    Crusher.removeRecipe(item);
}

//Re-Add Ingot Recipes
Crusher.addRecipe(<ImmersiveEngineering:metal:11>, <ore:ingotAluminum>, 3600);
Crusher.addRecipe(<RotaryCraft:rotarycraft_item_modingots:21>, <ore:ingotTungsten>, 3600);
Crusher.addRecipe(<libVulpes:libVulpesproductdust:7>, <ore:ingotTitanium>, 3600);
Crusher.addRecipe(<libVulpes:libVulpesproductdust:10>, <ore:ingotIridium>, 3600);
Crusher.addRecipe(<customitems:energetic_alloy_dust>, <ore:ingotEnergeticAlloy>, 3600);
Crusher.addRecipe(<libVulpes:libVulpesproductdust:3>, <ore:ingotSilicon>, 6000);

//Re-Add Ore Recipes
Crusher.addRecipe(<RotaryCraft:rotarycraft_item_modextracts:87> * 4, <ore:oreTungsten>, 6000);
Crusher.addRecipe(<RotaryCraft:rotarycraft_item_modextracts:27> * 4, <ore:oreAluminum>, 6000);
Crusher.addRecipe(<ImmersiveEngineering:metal:12> * 2, <ore:oreLead>, 6000, <ImmersiveEngineering:metal:13>, 0.10);
Crusher.addRecipe(<ReactorCraft:reactorcraft_item_raw:3> * 8, <ore:oreAmmonium>, 6000);
Crusher.addRecipe(<ReactorCraft:reactorcraft_item_fluorite:6> * 4, <ore:oreFluorite>, 6000);
Crusher.addRecipe(<ReactorCraft:reactorcraft_item_raw:5> * 4, <ore:oreCalcite>, 6000);
Crusher.addRecipe(<ReactorCraft:reactorcraft_item_raw:6> * 4, <ore:oreMagnetite>, 6000);

//Add Miscelaneous Recipes
Crusher.addRecipe(<customitems:kimberlite_gravel>, <customitems:kimberlite>, 12000);
Crusher.addRecipe(<customitems:kimberlite_sand>, <customitems:kimberlite_gravel>, 9000);
Crusher.addRecipe(<customitems:graphite_dust> * 8, <customitems:impure_graphite>, 9000, <ElectriCraft:electricraft_item_crafting:1>, 0.125);
Crusher.addRecipe(<RotaryCraft:rotarycraft_item_powders>, <ore:netherrack>, 4800);
Crusher.addRecipe(<customitems:graphite_dust>, <ReactorCraft:reactorcraft_item_crafting:13>, 1600);
Crusher.addRecipe(<Eln:Eln.sharedItem:6>, <RotaryCraft:rotarycraft_item_modextracts:87>, 1600);
Crusher.addRecipe(<ReactorCraft:reactorcraft_item_raw:8>, <ore:gemEmerald>, 1600);
Crusher.addRecipe(<minecraft:sand> * 4, <minecraft:sandstone>, 2400, <RotaryCraft:rotarycraft_item_modingots:20>, 0.125);
Crusher.addRecipe(<customitems:charcoal_dust>, <ore:charcoal>, 4800);


//Add Sulfuric Acid recipe to refinery
Refinery.addRecipe(<liquid:sulfuricacid> * 100, <liquid:water> * 100, <liquid:sulfurtrioxide> * 100);


//Excavator
//Remove All Veins
Excavator.removeMineral("Bauxite");
Excavator.removeMineral("Pyrite");
Excavator.removeMineral("Gold");
Excavator.removeMineral("Nickel");
Excavator.removeMineral("Platinum");
Excavator.removeMineral("Lapis");
Excavator.removeMineral("Coal");
Excavator.removeMineral("Cassiterite");
Excavator.removeMineral("Copper");
Excavator.removeMineral("Iron");
Excavator.removeMineral("Galena");
Excavator.removeMineral("Silver");
Excavator.removeMineral("Lead");
Excavator.removeMineral("Quartzite");

//Add Ores to Specific Veins
//New Veins
//Nether Veins
Excavator.addMineral("Ammonium Chloride", 25, 0.5, ["netherrack", "oreAmmonium"], [75, 25], [-1], false);
Excavator.addMineral("Thorite", 10, 0.3, ["netherrack", "oreThorium", "orePitchblende"], [60, 30, 10], [-1], false);

//Non-Nether Veins
Excavator.addMineral("Fluorite", 30, 0.2, ["stone", "cobblestone", "gravel", "oreFluorite"], [15, 10, 5, 70], [-1], true);
Excavator.addMineral("Cinnabar", 15, 0.1, ["stone", "cobblestone", "gravel", "oreRedstone", "oreCinnabar", "dustSulfur"], [25, 10, 5, 33.75, 6, 3], [-1], true);
Excavator.addMineral("Silt", 25, 0.05, ["blockClay", "sand", "gravel"], [50, 30, 20], [-1], true);
Excavator.addMineral("Wolframite", 10, 0.1, ["stone", "cobblestone", "gravel", "oreTungsten", "oreIron"], [40, 20, 10, 12, 3], [-1], true);
Excavator.addMineral("Pitchblende", 10, 0.3, ["stone", "cobblestone", "gravel", "orePitchblende", "oreThorium", "oreLead"], [40, 20, 10, 19.5, 1.7, 1.5], [-1], true);
//Remade Veins
//Nether Veins
Excavator.addMineral("Pyrite", 20, 0.1, ["netherrack", "oreIron", "dustSulfur"], [60, 20, 20], [-1], false);
//Non-Nether Veins
Excavator.addMineral("Magnetite", 25, 0.1, ["stone", "cobblestone", "gravel", "oreMagnetite", "oreIron", "oreGold"], [20, 10, 5, 55.25, 6.5, 3.25], [-1], true);
Excavator.addMineral("Bauxite", 20, 0.2, ["stone", "cobblestone", "gravel", "oreAluminum", "oreTitanium"], [20, 10, 5, 58.5, 3.25], [-1], true);
Excavator.addMineral("Cassiterite", 15, 0.2, ["stone", "cobblestone", "gravel", "oreTin"], [20, 10, 5, 61.75], [-1], true);
Excavator.addMineral("Copper", 30, 0.2, ["stone", "cobblestone", "gravel", "oreCopper", "oreGold", "oreNickel"], [20, 10, 5, 42.25, 16.25, 3.25], [-1], true);
Excavator.addMineral("Iron", 25, 0.1, ["stone", "cobblestone", "gravel", "oreIron", "oreNickel", "oreTin"], [20, 10, 5, 32.25, 16.25, 13], [-1], true);
Excavator.addMineral("Quartzite", 25, 0.1, ["stone", "cobblestone", "gravel", "oreQuartz", "oreCertusQuartz"], [20, 10, 5, 39, 26], [-1], true);
Excavator.addMineral("Lapis", 10, 0.2, ["stone", "cobblestone", "gravel", "oreLapis", "oreIron", "dustSulfur"], [20, 10, 5, 42.25, 17.875, 1.625], [-1], true);
Excavator.addMineral("Coal", 25, 0.1, ["stone", "cobblestone", "gravel", "oreCoal", "oreDiamond", "oreEmerald"], [15, 10, 5, 64.4, 1.05, 1.05], [-1], true);
Excavator.addMineral("Gold", 20, 0.3, ["stone", "cobblestone", "gravel", "oreGold", "oreCopper", "oreNickel"], [40, 20, 10, 19.5, 7.5, 1.5], [-1], true);
Excavator.addMineral("Nickel", 20, 0.3, ["stone", "cobblestone", "gravel", "oreNickel", "oreIron", "orePlatinum"], [40, 20, 10, 25.5, 1.5, 1.5], [-1], true);
Excavator.addMineral("Galena", 25, 0.2, ["stone", "cobblestone", "gravel", "oreLead", "oreSilver"], [20, 10, 5, 26, 26, 6.5], [-1], true);
Excavator.addMineral("Lead", 5, 0.15, ["stone", "cobblestone", "gravel", "oreLead", "oreSilver"], [30, 15, 5, 30, 17.5], [-1], true);
Excavator.addMineral("Silver", 5, 0.2, ["stone", "cobblestone", "gravel", "oreLead", "oreSilver"], [30, 15, 5, 30, 17.5], [-1], true);
Excavator.addMineral("Platinum", 5, 0.35, ["stone", "cobblestone", "gravel", "orePlatinum", "oreNickel"], [45, 20, 15, 8, 6], [-1], true);
