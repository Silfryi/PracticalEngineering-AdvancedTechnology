//Import
import minetweaker.item.IItemStack;
import mods.nei.NEI.hide;

               
//Hide useless LP components
hide(<LogisticsPipes:item.pipeComponents:*>);


//LogisticsPipes remote orderer to get more expensive in a realistic way
recipes.remove(<LogisticsPipes:item.remoteOrdererItem>);
recipes.addShaped(<LogisticsPipes:item.remoteOrdererItem>,
 [[<RotaryCraft:rotarycraft_item_shaftcraft>, <advancedRocketry:miscpart>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<RotaryCraft:rotarycraft_item_gearcraft>, <RotaryCraft:rotarycraft_item_borecraft:4>, <RotaryCraft:rotarycraft_item_gearcraft>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <BuildCraft|Silicon:redstoneChipset:2>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);

//Assembly recipes
recipes.remove(<BuildCraft|Silicon:laserBlock>);
recipes.remove(<BuildCraft|Silicon:laserTableBlock>);
recipes.addShaped(<BuildCraft|Silicon:laserBlock>, 
 [[<RotaryCraft:rotarycraft_item_misccraft:7>, <RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<RotaryCraft:rotarycraft_item_shaftcraft:3>, <ReactorCraft:reactorcraft_item_canister:9>, <advancedRocketry:lens>],
 [<RotaryCraft:rotarycraft_item_misccraft:2>, <RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<BuildCraft|Silicon:laserTableBlock>,
 [[<RotaryCraft:rotarycraft_item_shaftcraft>, <advancedRocketry:lens>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<PneumaticCraft:pneumaticCilinder>, <Eln:Eln.sharedItem:450>, <PneumaticCraft:pneumaticCilinder>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_borecraft:4>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);

//LogiPipes recipes without BC pipes
recipes.remove(<LogisticsPipes:item.PipeItemsBasicLogistics>);
recipes.remove(<LogisticsPipes:item.PipeFluidBasic>);
recipes.remove(<LogisticsPipes:item.PipeFluidExtractor>);
recipes.addShaped(<LogisticsPipes:item.PipeItemsBasicLogistics> * 4,
 [[<ore:ingotIron>, <ore:paneGlassColorless>, <ore:ingotIron>],
 [<LogisticsPipes:item.PipeItemsBasicTransport>, <ore:chipsetGold>, <LogisticsPipes:item.PipeItemsBasicTransport>],
 [<ore:ingotIron>, <ore:paneGlassColorless>, <ore:ingotIron>]]);
recipes.addShaped(<LogisticsPipes:item.PipeFluidBasic>,
 [[null, <ore:itemRubber>, null],
 [<ore:paneGlassColorless>, <LogisticsPipes:item.PipeItemsBasicLogistics>, <ore:paneGlassColorless>],
 [null, <ore:itemRubber>, null]]);
recipes.addShapeless(<LogisticsPipes:item.PipeFluidExtractor>, [<LogisticsPipes:item.PipeFluidBasic>, <RotaryCraft:rotarycraft_item_enginecraft>]);

//Buildcraft recipes that are untenable without some items
recipes.remove(<BuildCraft|Transport:filteredBufferBlock>);
recipes.addShaped(<BuildCraft|Transport:filteredBufferBlock>,
 [[<ore:plankWood>, <RotaryCraft:rotarycraft_item_borecraft:4>, <ore:plankWood>],
 [<ore:plankWood>, <minecraft:chest>, <ore:plankWood>],
 [<ore:plankWood>, <minecraft:piston>, <ore:plankWood>]]);
