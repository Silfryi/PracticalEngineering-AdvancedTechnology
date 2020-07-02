//Import
import mods.nei.NEI.hide;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import mods.magneticraft.Grinder;
import mods.magneticraft.Crusher;
import mods.magneticraft.Sifter;
import mods.magneticraft.CrushingTable;
import mods.magneticraft.OilDistillery;
import mods.magneticraft.Refinery;
import mods.magneticraft.Polymerizer;


//Arrays for removal and hiding
var oreHide = [//MagnetiCraft ore processing items (useless)
               //Why I can't just use an * I don't know but this is rididulous
                <Magneticraft:item.chunks:0>,
               <Magneticraft:item.rubble:0>,
               <Magneticraft:item.pebbles:0>,
               <Magneticraft:item.chunks:1>,
               <Magneticraft:item.rubble:1>,
               <Magneticraft:item.pebbles:1>,
               <Magneticraft:item.chunks:2>,
               <Magneticraft:item.rubble:2>,
               <Magneticraft:item.pebbles:2>,
               <Magneticraft:item.chunks:3>,
               <Magneticraft:item.rubble:3>,
               <Magneticraft:item.pebbles:3>,
               <Magneticraft:item.chunks:4>,
               <Magneticraft:item.rubble:4>,
               <Magneticraft:item.pebbles:4>,
               <Magneticraft:item.chunks:5>,
               <Magneticraft:item.rubble:5>,
               <Magneticraft:item.pebbles:5>,
               <Magneticraft:item.chunks:6>,
               <Magneticraft:item.rubble:6>,
               <Magneticraft:item.pebbles:6>,
               <Magneticraft:item.chunks:7>,
               <Magneticraft:item.rubble:7>,
               <Magneticraft:item.pebbles:7>,
               <Magneticraft:item.chunks:8>,
               <Magneticraft:item.rubble:8>,
               <Magneticraft:item.pebbles:8>,
               <Magneticraft:item.chunks:9>,
               <Magneticraft:item.rubble:9>,
               <Magneticraft:item.pebbles:9>,
               <Magneticraft:item.chunks:10>,
               <Magneticraft:item.rubble:10>,
               <Magneticraft:item.pebbles:10>,
               <Magneticraft:item.chunks:11>,
               <Magneticraft:item.rubble:11>,
               <Magneticraft:item.pebbles:11>,
               <Magneticraft:item.chunks:12>,
               <Magneticraft:item.rubble:12>,
               <Magneticraft:item.pebbles:12>,
               <Magneticraft:item.chunks:13>,
               <Magneticraft:item.rubble:13>,
               <Magneticraft:item.pebbles:13>,
               <Magneticraft:item.chunks:14>,
               <Magneticraft:item.rubble:14>,
               <Magneticraft:item.pebbles:14>,
               <Magneticraft:item.chunks:15>,
               <Magneticraft:item.rubble:15>,
               <Magneticraft:item.pebbles:15>,
               <Magneticraft:item.chunks:16>,
               <Magneticraft:item.rubble:16>,
               <Magneticraft:item.pebbles:16>,
               <Magneticraft:item.chunks:17>,
               <Magneticraft:item.rubble:17>,
               <Magneticraft:item.pebbles:17>,
               <Magneticraft:item.chunks:18>,
               <Magneticraft:item.rubble:18>,
               <Magneticraft:item.pebbles:18>,
               <Magneticraft:item.chunks:19>,
               <Magneticraft:item.rubble:19>,
               <Magneticraft:item.pebbles:19>,
               <Magneticraft:item.chunks:20>,
               <Magneticraft:item.rubble:20>,
               <Magneticraft:item.pebbles:20>,
               <Magneticraft:item.chunks:21>,
               <Magneticraft:item.rubble:21>,
               <Magneticraft:item.pebbles:21>,
               <Magneticraft:item.chunks:22>,
               <Magneticraft:item.rubble:22>,
               <Magneticraft:item.pebbles:22>,
               <Magneticraft:item.chunks:23>,
               <Magneticraft:item.rubble:23>,
               <Magneticraft:item.pebbles:23>,
               //Now for Dusts
               //Dusts
               <Magneticraft:item.dust:4>,
               <Magneticraft:item.dust:7>,
               <Magneticraft:item.dust:8>,
               <Magneticraft:item.dust:10>,
               <Magneticraft:item.dust:11>,
               <Magneticraft:item.dust:12>,
               <Magneticraft:item.dust:13>,
               <Magneticraft:item.dust:16>,
               <Magneticraft:item.dust:17>,
               <Magneticraft:item.dust:18>,
               <Magneticraft:item.dust:19>,
               <Magneticraft:item.dust:20>,
               <Magneticraft:item.dust:22>,
               <Magneticraft:item.dust:23>,
               ] as IItemStack[];
               
var oreRemove = [//Ingots
                <minecraft:iron_ingot>,
                <minecraft:gold_ingot>,
                <ImmersiveEngineering:metal>,
                <libVulpes:libVulpesproductingot:5>,
                <Magneticraft:item.ingotTungsten>,
                <ImmersiveEngineering:metal:2>,
                <ImmersiveEngineering:metal:3>,
                <ReactorCraft:reactorcraft_item_ingots>,
                <ImmersiveEngineering:metal:4>,
                <RotaryCraft:rotarycraft_item_modingots:42>,
                <RotaryCraft:rotarycraft_item_modingots:41>,
                <RotaryCraft:rotarycraft_item_modingots:45>,
                <ImmersiveEngineering:metal:1>,
                <RotaryCraft:rotarycraft_item_modingots:43>,
                <libVulpes:libVulpesproductingot:7>,
                <RotaryCraft:rotarycraft_item_modingots:46>,
                <libVulpes:libVulpesproductingot:10>,
                <minecraft:diamond>,
                <minecraft:quartz>,
                <minecraft:obsidian>,
                //Ores
                <minecraft:iron_ore>,
                <minecraft:gold_ore>,
                <libVulpes:libVulpesore0:4>,
                <libVulpes:libVulpesore0:5>,
                <Eln:Eln.Ore:5>,
                <ImmersiveEngineering:ore:2>,
                <ImmersiveEngineering:ore:3>,
                <Magneticraft:uranium_ore>,
                <Magneticraft:thorium_ore>,
                <ImmersiveEngineering:ore:4>,
                <Magneticraft:zinc_ore>,
                <ElectriCraft:electricraft_block_ore:5>,
                <libVulpes:libVulpesore0:8>,
                <libVulpes:libVulpesore0:10>,
                <Magneticraft:sulfur_ore>,
                <minecraft:coal_ore>,
                <minecraft:lapis_ore>,
                <minecraft:diamond_ore>,
                <minecraft:redstone_ore>,
                <minecraft:emerald_ore>,
                <minecraft:quartz_ore>,
                <Magneticraft:salt_ore>,
                <Magneticraft:limestone>,
                <Magneticraft:burnt_limestone>,
                ] as IItemStack[];
               

var toHide = [//Blocks to hide
              <Magneticraft:electricfurnace>,
              <Magneticraft:ElectricPoleCableConnection>,
              <Magneticraft:miner>,
              <Magneticraft:geothermal_pump>,
              <Magneticraft:block_carbide>,
              <Magneticraft:sulfur_ore>,
              <Magneticraft:block_zinc>,
              <Magneticraft:firebox>,
              <Magneticraft:infinite_steam>,
              <Magneticraft:solar_tower_core>,
              <Magneticraft:solarpanel>,
              <Magneticraft:windturbine>,
              <Magneticraft:cooler>,
              <Magneticraft:mg_tank>,
              <Magneticraft:uranium_ore>,
              <Magneticraft:salt_ore>,
              <Magneticraft:zinc_ore>,
              <Magneticraft:battery>,
              <Magneticraft:InfiniteWater>,
              <Magneticraft:diode>,
              <Magneticraft:combustion_engine>,
              <Magneticraft:steam_engine>,
              <Magneticraft:mirror>,
              <Magneticraft:resistance>,
              <Magneticraft:boiler>,
              <Magneticraft:void_inventory>,
              <Magneticraft:heat_resistance>,
              <Magneticraft:block_breaker>,
              <Magneticraft:biomassburner>,
              <Magneticraft:stirling_generator>,
              <Magneticraft:turbine_control>,
              <Magneticraft:infinite_energy>,
              <Magneticraft:heat_sink>,
              <Magneticraft:block_brass>,
              <Magneticraft:thermopile>,
              <Magneticraft:brickFurnace>,
              <Magneticraft:transformer_lm>,
              <Magneticraft:transformer_mh>,
              <Magneticraft:item.heat_cable>,
              <Magneticraft:teslacoil>,
              <Magneticraft:multi_heat>,
              <Magneticraft:kinetic_generator>,
              <Magneticraft:basic_generator>,
              <Magneticraft:ElectricPoleTier1>,
              <Magneticraft:permanent_magnet>,
              <Magneticraft:item.optic_fiber>,
              <Magneticraft:item.brass_pipe>,
              <Magneticraft:MB_Energy_medium>,
              <Magneticraft:mb_kinetic>,
              <Magneticraft:item.copper_wire>,
              <Magneticraft:item.cable_low>,
              <Magneticraft:item.cable_medium>,
              <Magneticraft:item.cable_high>,
              <Magneticraft:item.copper_pipe>,
              <Magneticraft:item.iron_pipe>,
              <Magneticraft:crusher_control>,
              <Magneticraft:polimerizer_control>,
              <Magneticraft:rc_alternator>,
              <Magneticraft:copper_ore>,
              <Magneticraft:tungsten_ore>,
              <Magneticraft:block_sulfur>,
              <Magneticraft:heater>,
              //Items
              <Magneticraft:item.jack_hammer>,
              <Magneticraft:item.oil_prospector>,
              <Magneticraft:item.voltmeter>,
              <Magneticraft:item.electric_sword>,
              <Magneticraft:item.photoelectric_dust>,
              <Magneticraft:item.dustQuartz>,
              <Magneticraft:item.plastic>,
              <Magneticraft:item.heatcoil_iron>,
              <Magneticraft:item.heatcoil_copper>,
              <Magneticraft:item.heatcoil_tungsten>,
              <Magneticraft:item.copper_coil>,
              <Magneticraft:item.map_pos>,
              <Magneticraft:item.alternator>,
              <Magneticraft:item.ingotCarbide>,
              <Magneticraft:item.magnet>,
              <Magneticraft:item.turbine_0>,
              <Magneticraft:item.turbine_1>,
              <Magneticraft:item.turbine_2>,
              <Magneticraft:item.turbine_wing>,
              <Magneticraft:item.uranium_rod:*>,
              <Magneticraft:item.thorium_rod:*>,
              <Magneticraft:item.heavy_copper_coil>,
              <Magneticraft:item.chainsaw>,
              <Magneticraft:item.dustBrass>,
              <Magneticraft:item.ingotBrass>,
              <Magneticraft:item.string_fabric>,
              <Magneticraft:item.tool_charger>,
              <Magneticraft:item.drill>,
              <Magneticraft:item.rubber>,
              <Magneticraft:item.battery>,
              <Magneticraft:item.battery_small>
              ] as IItemStack[];
               
var plateRemove = [<ore:plateIron>,
                   <ore:plateGold>,
                   <ore:plateTin>,
                   <ore:plateCopper>,
                   <ore:plateSilver>,
                   <ore:plateLead>,
                   <ore:plateNickel>,
                   <ore:plateElectrum>,
                   <ore:plateConstantan>,
                   <ore:plateSteel>,
                   <ore:plateAluminum>
                   ] as IIngredient[];

//Remove and hide what all needs it
for item in plateRemove {
    recipes.remove(item);
}
for item in oreHide {
    Grinder.removeRecipe(item);
    Crusher.removeRecipe(item);
    Sifter.removeRecipe(item);
    hide(item);
}
for item in oreRemove {
    Grinder.removeRecipe(item);
    Crusher.removeRecipe(item);
    Sifter.removeRecipe(item);
    CrushingTable.removeRecipe(item);
    
}
for item in toHide {
    recipes.remove(item);
    hide(item);
}

//Shaped recipes for MagnetiCraft blocks
//Oil Processing
recipes.remove(<Magneticraft:pumpjack_1>);
recipes.addShaped(<Magneticraft:pumpjack_1>,
 [[<ore:blockSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
 [<ore:blockSteel>, <ImmersiveEngineering:metalDecoration>, <ore:stickSteel>],
 [<ImmersiveEngineering:metalDecoration:1>, <Magneticraft:item.motor>, <ImmersiveEngineering:metalDecoration:1>]]);
recipes.addShaped(<Magneticraft:refinery_control>,
 [[<ore:ingotTungsten>, <ore:ingotTungsten>, <ore:ingotTungsten>],
 [<Magneticraft:refinery_gap>, <Magneticraft:chasis>, <Magneticraft:refinery_gap>],
 [<ore:ingotTungsten>, <ore:ingotTungsten>, <ore:ingotTungsten>]]);
recipes.addShaped(<Magneticraft:distillery_control>,
 [[<ore:ingotTungsten>, <ImmersiveEngineering:metalDevice:12>, <ore:ingotTungsten>],
 [<ore:ingotTungsten>, <Magneticraft:refinery_gap>, <ore:ingotTungsten>],
 [<ore:ingotTungsten>, <Magneticraft:chasis>, <ore:ingotTungsten>]]);
 
//General Multiblocks
recipes.remove(<Magneticraft:MB_EnergyIO>);
recipes.remove(<Magneticraft:multi_io>);
recipes.remove(<Magneticraft:refinery_tank>);
recipes.remove(<Magneticraft:mb_controls>);
recipes.remove(<Magneticraft:chasis>);
recipes.addShaped(<Magneticraft:machine_housing> * 4,
 [[<ore:ingotTungsten>, <ore:sheetIron>, <ore:ingotTungsten>],
 [<ore:sheetIron>, null, <ore:sheetIron>],
 [<ore:ingotTungsten>, <ore:sheetIron>, <ore:ingotTungsten>]]);
recipes.addShaped(<Magneticraft:chasis> * 2,
 [[<ore:ingotTungsten>, <ore:ingotIron>, <ore:ingotTungsten>],
 [<ore:ingotIron>, <ImmersiveEngineering:material:12>, <ore:ingotIron>],
 [<ore:ingotTungsten>, <ore:ingotIron>, <ore:ingotTungsten>]]);
recipes.addShaped(<Magneticraft:multi_io>,
 [[<Magneticraft:chasis>],
 [<minecraft:hopper>]]);
recipes.addShaped(<Magneticraft:MB_EnergyIO>,
 [[<Magneticraft:chasis>],
 [<ImmersiveEngineering:coil>]]);
recipes.addShaped(<Magneticraft:refinery_tank>,
 [[<Magneticraft:refinery_gap>],
 [<Magneticraft:fluid_hopper>]]);
recipes.addShaped(<Magneticraft:mb_controls>,
 [[<ore:ingotTungsten>, <ImmersiveEngineering:metalDevice2>, <ore:ingotTungsten>],
 [<minecraft:lever>, <minecraft:lever>, <minecraft:lever>],
 [<ore:ingotTungsten>, <Magneticraft:chasis>, <ore:ingotTungsten>]]);

//Machines
recipes.remove(<Magneticraft:electric_switch>);
recipes.remove(<Magneticraft:rf_alternator>);
recipes.remove(<Magneticraft:conveyor_low>);
recipes.addShaped(<Magneticraft:electric_switch>,
 [[null, <ImmersiveEngineering:metalDevice2>, null],
 [<ImmersiveEngineering:coil>, <Magneticraft:machine_housing>, <ImmersiveEngineering:coil>]]);
recipes.addShaped(<Magneticraft:sifter_control>,
 [[<ore:ingotTungsten>, <Magneticraft:refinery_gap>, <ore:ingotTungsten>],
 [<Magneticraft:item.motor>, <Magneticraft:chasis>, <Magneticraft:item.motor>],
 [<ore:ingotTungsten>, <Magneticraft:refinery_gap>, <ore:ingotTungsten>]]);
recipes.addShaped(<Magneticraft:rf_alternator>,
 [[<ore:ingotTungsten>, <ore:plateSteel>, <ore:ingotTungsten>],
 [<Magneticraft:item.motor>, <ImmersiveEngineering:storage:8>, <Magneticraft:item.motor>],
 [<ore:plateSteel>, <ore:ingotTungsten>, <ore:plateSteel>]]);
recipes.addShaped(<Magneticraft:conveyor_low> * 8,
 [[<PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>],
 [<ore:ingotIron>, <RotaryCraft:rotarycraft_item_gearcraft:1>, <ore:ingotIron>]]);
recipes.addShaped(<Magneticraft:inserter>,
 [[<ore:ingotHSLA>, <RotaryCraft:rotarycraft_item_gearcraft>, <RotaryCraft:rotarycraft_item_gearcraft>],
 [<RotaryCraft:rotarycraft_item_gearcraft>, <RotaryCraft:rotarycraft_item_gearcraft:1>, null],
 [<ore:ingotSteel>, <Magneticraft:item.motor>, <ore:ingotSteel>]]);

//Crafting components
recipes.remove(<Magneticraft:item.motor>);
recipes.addShaped(<Magneticraft:item.motor>,
 [[<ImmersiveEngineering:coil>, <ImmersiveEngineering:coil>, <ore:ingotCopper>],
 [<ore:ingotIron>, <ore:ingotIron>, <ImmersiveEngineering:material:11>],
 [<ImmersiveEngineering:coil>, <ImmersiveEngineering:coil>, <ore:ingotCopper>]]);
 
//Tools
recipes.remove(<Magneticraft:item.iron_hammer>);
recipes.addShaped(<Magneticraft:item.iron_hammer>,
 [[<ore:plateIron>, <minecraft:string>, null],
 [<ore:plateIron>, <ore:treatedStick>, <ore:ingotIron>],
 [null, <ore:treatedStick>, null]]);
 
//Upgrades
recipes.remove(<Magneticraft:item.inserter_item_drop_upgrade>);
recipes.remove(<Magneticraft:item.inserter_item_suck_upgrade>);
recipes.remove(<Magneticraft:item.inserter_item_speed_upgrade>);
recipes.remove(<Magneticraft:item.inserter_item_slow_upgrade>);
recipes.addShaped(<Magneticraft:item.inserter_item_drop_upgrade>,
 [[<PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>],
 [<PneumaticCraft:plastic:15>, <ore:ingotCopper>, <PneumaticCraft:plastic:15>],
 [<PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>]]);
recipes.addShaped(<Magneticraft:item.inserter_item_suck_upgrade>,
 [[<PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>],
 [<PneumaticCraft:plastic:15>, <ore:ingotTungsten>, <PneumaticCraft:plastic:15>],
 [<PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>]]);
recipes.addShaped(<Magneticraft:item.inserter_item_speed_upgrade>,
 [[<PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>],
 [<PneumaticCraft:plastic:15>, <Magneticraft:item.motor>, <PneumaticCraft:plastic:15>],
 [<PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>]]);
recipes.addShaped(<Magneticraft:item.inserter_item_slow_upgrade>,
 [[<PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>],
 [<PneumaticCraft:plastic:15>, <Eln:Eln.sharedItem:7708>, <PneumaticCraft:plastic:15>],
 [<PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>]]);


//Oil processing tweaks
//Oil Heater
OilDistillery.removeRecipe(<liquid:oil>);
OilDistillery.addRecipe(<liquid:oil> * 20, <liquid:hotcrude> * 20, 7200);
//Special heavy soulsand oil, no gasses, you need to crack Naphtha into LPG for gasses
OilDistillery.addRecipe(<liquid:souloil> * 20, <liquid:hotsoulcrude> * 20, 7200);
//Special marsh gas
OilDistillery.addRecipe(<liquid:swampgas> * 20, <liquid:hotswampgas> * 20, 3600);
//Distillation Tower
//Yes, I know the 0:6:42:28:5:15:4 ratio should be 35:3:20:15:20:5:2, but the IRL one is much worse for balance
//It would also make it 35% less efficient than PNC
//Which is something I'd like to see people move away from ($#@$ PNC "gasoline" useable in a _diesel_ generator)
//Ratio numbers are Bitumen:Lubricant:Diesel:Kerosene:Naptha:Gasoline:Gasses (mixed)
//Also, why "gasoline (fuel fluid, relocalized to naphtha)" is useable in the diesel generator I don't know
//Normal Oil
Refinery.removeRecipe(<liquid:hotcrude>);
Refinery.addRecipe(<liquid:hotcrude> * 100, <liquid:heavyoil> * 48, <liquid:lightoil> * 48, <liquid:mixedrefinerygasses> * 4);
//Soulsand-derived oil, heavier with no gasses, they boiled off due to the heat
Refinery.addRecipe(<liquid:hotsoulcrude> * 100, <liquid:heavyoil> * 72, <liquid:lightoil> * 28, <liquid:water> * 0);
//Marsh Gas, produced by the decay in swamps
Refinery.addRecipe(<liquid:hotswampgas> * 100, <liquid:lpg> * 15, <liquid:naturalgas> * 85, <liquid:water> * 0);
//Additional processing
Refinery.addRecipe(<liquid:heavyoil> * 48, <liquid:lubricant> * 6, <liquid:diesel> * 42, <liquid:water> * 0);
Refinery.addRecipe(<liquid:lightoil> * 48, <liquid:kerosene> * 28, <liquid:fuel> * 5, <liquid:gasoline> * 15);
Refinery.addRecipe(<liquid:mixedrefinerygasses> * 4, <liquid:lpg> * 3, <liquid:naturalgas> * 1, <liquid:water> * 0);
//Liquid nitrogen temporary fix
OilDistillery.addRecipe(<liquid:rc liquid nitrogen> * 100, <liquid:nitrogen> * 300, 800);

//Stone Anvil (Crushing Table) plates
CrushingTable.addRecipe(<minecraft:iron_ingot>, <ImmersiveEngineering:metal:30>);
CrushingTable.addRecipe(<ImmersiveEngineering:metal:0>, <ImmersiveEngineering:metal:31>);
CrushingTable.addRecipe(<ImmersiveEngineering:metal:1>, <ImmersiveEngineering:metal:32>);
CrushingTable.addRecipe(<ImmersiveEngineering:metal:2>, <ImmersiveEngineering:metal:33>);
CrushingTable.addRecipe(<ImmersiveEngineering:metal:3>, <ImmersiveEngineering:metal:34>);
CrushingTable.addRecipe(<ImmersiveEngineering:metal:4>, <ImmersiveEngineering:metal:35>);
CrushingTable.addRecipe(<ImmersiveEngineering:metal:5>, <ImmersiveEngineering:metal:36>);
CrushingTable.addRecipe(<ImmersiveEngineering:metal:6>, <ImmersiveEngineering:metal:37>);
CrushingTable.addRecipe(<ImmersiveEngineering:metal:7>, <ImmersiveEngineering:metal:38>);
CrushingTable.addRecipe(<libVulpes:libVulpesproductingot:5>, <libVulpes:libVulpesproductplate:5>);
CrushingTable.addRecipe(<minecraft:gold_ingot>, <libVulpes:libVulpesproductplate:2>);


//Ore and Material Processing
//Remove possibly visible polymerizer recipe
Polymerizer.removeRecipe(<minecraft:coal>);
//Kimberlite in sifter
Sifter.addRecipe(<customitems:kimberlite_gravel>, <minecraft:gravel>, <RotaryCraft:rotarycraft_item_extracts:29>, 0.075);
Sifter.addRecipe(<customitems:kimberlite_sand>, <minecraft:sand>, <ElectriCraft:electricraft_item_crafting:1>, 0.116);
//If it has a dust, and is a gem, 100% chance of dust and 25% chance of gem -> use compactor (chances or numbers multiplied by output amount or 4, whichever is less)
//If chance would hit 100 (x4), chance is 80 or 90% instead
//Dusts are output amount - 1, 15-45 percent depening upon output for extra
//Gemstones without dusts are 100% main for gemstone, 5% extra if one output, or output amount - 1 (capped at 4), 05-55% output extra depending upon amount 
//Dust
Sifter.addRecipe(<RotaryCraft:rotarycraft_item_extracts:27>, <minecraft:redstone> * 3, <minecraft:redstone>, 0.45);
Sifter.addRecipe(<RotaryCraft:rotarycraft_item_modextracts:195>, <RotaryCraft:rotarycraft_item_modingots:48> * 2, <RotaryCraft:rotarycraft_item_modingots:48>, 0.35);
Sifter.addRecipe(<RotaryCraft:rotarycraft_item_modextracts:227>, <ReactorCraft:reactorcraft_item_raw:3>, <ReactorCraft:reactorcraft_item_raw:3>, 0.10);
//Gemstones with dusts
Sifter.addRecipe(<RotaryCraft:rotarycraft_item_extracts:24>, <RotaryCraft:rotarycraft_item_powders:10>, <minecraft:coal>, 0.25);
Sifter.addRecipe(<RotaryCraft:rotarycraft_item_extracts:28>, <ElectriCraft:electricraft_item_crafting> * 4, <minecraft:dye:4>, 0.90);
Sifter.addRecipe(<RotaryCraft:rotarycraft_item_extracts:29>, <ElectriCraft:electricraft_item_crafting:1>, <minecraft:diamond>, 0.20);
Sifter.addRecipe(<RotaryCraft:rotarycraft_item_extracts:30>, <ReactorCraft:reactorcraft_item_raw:8>, <minecraft:emerald>, 0.25);
Sifter.addRecipe(<RotaryCraft:rotarycraft_item_extracts:31>, <ElectriCraft:electricraft_item_crafting:2>, <minecraft:quartz>, 0.25);
Sifter.addRecipe(<RotaryCraft:rotarycraft_item_modextracts:39>, <appliedenergistics2:item.ItemMultiMaterial:2> * 2, <appliedenergistics2:item.ItemMultiMaterial>, 0.45);
//Gemstones without dusts
Sifter.addRecipe(<RotaryCraft:rotarycraft_item_modextracts:99>, <RotaryCraft:rotarycraft_item_modingots:24>, <RotaryCraft:rotarycraft_item_modingots:24>, 0.05);
Sifter.addRecipe(<RotaryCraft:rotarycraft_item_modextracts:211>, <ReactorCraft:reactorcraft_item_fluorite:6> * 4, <ReactorCraft:reactorcraft_item_fluorite:6>, 0.55);
Sifter.addRecipe(<RotaryCraft:rotarycraft_item_modextracts:231>, <ReactorCraft:reactorcraft_item_raw:5>, <ReactorCraft:reactorcraft_item_raw:5>, 0.05);
Sifter.addRecipe(<RotaryCraft:rotarycraft_item_modextracts:263>, <ReactorCraft:reactorcraft_item_raw:6>, <ReactorCraft:reactorcraft_item_raw:6>, 0.05);
