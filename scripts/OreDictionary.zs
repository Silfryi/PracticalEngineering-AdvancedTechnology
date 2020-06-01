//Import
import minetweaker.item.IItemStack;

//Register things to OreDict
<ore:blockClay>.add(<minecraft:clay>);
<ore:concrete>.add(<ReactorCraft:reactorcraft_block_mats>);
<ore:dyeBlack>.add(<RotaryCraft:rotarycraft_item_powders:10>);
<ore:dyeYellow>.add(<RotaryCraft:rotarycraft_item_modingots:48>);
<ore:sheetRubber>.add(<customitems:rubber_sheet>);
<ore:oreKimberlite>.add(<customitems:kimberlite>);
<ore:dustCharcoal>.add(<customitems:charcoal_dust>);
<ore:stickAlloy>.add(<customitems:tungsten_alloy_steel_rod>);
<ore:slimeball>.add(<Eln:Eln.sharedItem:4096>);

//Register crystals to OreDict so Advanced Rocketry can pick them up
<ore:crystalRedstone>.add(<GeoStrata:geostrata_block_rfcrystalseed>);
<ore:crystalAmethyst>.add(<advancedRocketry:tile.crystal:0>);
<ore:crystalSapphire>.add(<advancedRocketry:tile.crystal:1>);
<ore:crystalEmerald>.add(<advancedRocketry:tile.crystal:2>);
<ore:crystalRuby>.add(<advancedRocketry:tile.crystal:3>);
<ore:crystalCitrine>.add(<advancedRocketry:tile.crystal:4>);
<ore:crystalWulfentite>.add(<advancedRocketry:tile.crystal:5>);

//Removals, EIO silicon
<ore:dustNetherQuartz>.add(<ImmersiveEngineering:metal:18>);
<ore:itemSilicon>.remove(<EnderIO:itemMaterial>);
<ore:crystalRedstone>.remove(<BuildCraft|Silicon:redstoneCrystal>);
<ore:dustTungsten>.remove(<Eln:Eln.sharedItem:6>);

//Remove RotaryCraft modingots from OreDictionary for what UniDict can't handle well
<ore:gemFluorite>.remove(<RotaryCraft:rotarycraft_item_modingots:52>);
<ore:itemQuicksilver>.remove(<RotaryCraft:rotarycraft_item_modingots:11>);
<ore:dustSaltpeter>.remove(<RotaryCraft:rotarycraft_item_modingots:83>);

//ReactorCraft nuclear waste OreDictionary
var shortLivedWaste = [<ReactorCraft:reactorcraft_item_waste:10>,
                       <ReactorCraft:reactorcraft_item_waste:11>,
                       <ReactorCraft:reactorcraft_item_waste:13>,
                       <ReactorCraft:reactorcraft_item_waste:16>,
                       <ReactorCraft:reactorcraft_item_waste:17>,
                       <ReactorCraft:reactorcraft_item_waste:24>,
                       <ReactorCraft:reactorcraft_item_waste:25>
	                   ] as IItemStack[];
var longLivedWaste = [<ReactorCraft:reactorcraft_item_waste:1>,
                      <ReactorCraft:reactorcraft_item_waste:2>,
                      <ReactorCraft:reactorcraft_item_waste:3>,
                      <ReactorCraft:reactorcraft_item_waste:4>,
                      <ReactorCraft:reactorcraft_item_waste:5>,
                      <ReactorCraft:reactorcraft_item_waste:6>,
                      <ReactorCraft:reactorcraft_item_waste:7>,
                      <ReactorCraft:reactorcraft_item_waste:8>,
                      <ReactorCraft:reactorcraft_item_waste:9>,
                      <ReactorCraft:reactorcraft_item_waste:12>,
                      <ReactorCraft:reactorcraft_item_waste:14>,
                      <ReactorCraft:reactorcraft_item_waste:15>,
                      <ReactorCraft:reactorcraft_item_waste:18>,
                      <ReactorCraft:reactorcraft_item_waste:19>,
                      <ReactorCraft:reactorcraft_item_waste:20>,
                      <ReactorCraft:reactorcraft_item_waste:21>,
                      <ReactorCraft:reactorcraft_item_waste:22>,
                      <ReactorCraft:reactorcraft_item_waste:23>,
                      <ReactorCraft:reactorcraft_item_waste:26>
	                  ] as IItemStack[];

for item in shortLivedWaste{
    <ore:shortLivedNuclearWaste>.add(item);
}
for item in longLivedWaste{
    <ore:longLivedNuclearWaste>.add(item);
}
