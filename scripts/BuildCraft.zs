//Import
import minetweaker.item.IItemStack;
import mods.nei.NEI.hide;



//Arrays for removal and hiding
var toRemove = [<BuildCraft|Silicon:laserBlock>,
                <BuildCraft|Silicon:laserTableBlock>,
                <LogisticsPipes:item.remoteOrdererItem>,
                <LogisticsPipes:item.PipeItemsBasicLogistics>,
                <LogisticsPipes:item.PipeFluidBasic>,
                <LogisticsPipes:item.PipeFluidExtractor>,
                <BuildCraft|Transport:filteredBufferBlock>
                ] as IItemStack[];
                
var toHide = [//BuildCraft pipes we don't want
              //Item Pipes
              <BuildCraft|Transport:item.buildcraftPipe.pipeitemswood:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipeitemsemerald:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipeitemscobblestone:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipeitemsstone:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipeitemsquartz:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipeitemsiron:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipeitemsgold:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipeitemsdiamond:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipeitemsobsidian:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipeitemslapis:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipeitemsdaizuli:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipeitemssandstone:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipeitemsvoid:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipeitemsemzuli:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipeitemsstripes:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipeitemsclay:*>,
              //Fluid Pipes
              <BuildCraft|Transport:pipeWaterproof>,
              <BuildCraft|Transport:item.buildcraftPipe.pipefluidswood:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipefluidsemerald:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipefluidscobblestone:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipefluidsstone:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipefluidsquartz:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipefluidsiron:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipefluidsgold:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipefluidsdiamond:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipefluidssandstone:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipefluidsvoid:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipefluidsclay:*>,
              //Power
              <BuildCraft|Transport:item.buildcraftPipe.pipepowerwood:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipepoweremerald:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipepowercobblestone:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipepowerstone:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipepowerquartz:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipepoweriron:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipepowergold:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipepowerdiamond:*>,
              <BuildCraft|Transport:item.buildcraftPipe.pipepowersandstone>,
              //Technical blocks
              //LogisticsPipes
              <LogisticsPipes:item.pipeComponents:*>,
              //BuildCraft blocks & items
              <BuildCraft|Core:buildToolBlock>,
              <BuildCraft|Core:debugger>,
              <BuildCraft|Transport:pipeBlock>,
              <BuildCraft|Robotics:redstone_board>.withTag({id: "logisticspipes:boardRobotRouter"})
			  ] as IItemStack[];

//Remove all that needs removing
for item in toRemove{
    recipes.remove(item);
}

//Hide techinical blocks
for item in toHide{
    recipes.remove(item);
    hide(item);
}



//LogisticsPipes and BuildCraft Shaped Recipes
recipes.addShaped(<LogisticsPipes:item.remoteOrdererItem>,
 [[<RotaryCraft:rotarycraft_item_shaftcraft>, <advancedRocketry:miscpart>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<RotaryCraft:rotarycraft_item_gearcraft>, <RotaryCraft:rotarycraft_item_borecraft:4>, <RotaryCraft:rotarycraft_item_gearcraft>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <BuildCraft|Silicon:redstoneChipset:2>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<BuildCraft|Silicon:laserBlock>, 
 [[<RotaryCraft:rotarycraft_item_misccraft:7>, <RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<RotaryCraft:rotarycraft_item_shaftcraft:3>, <ReactorCraft:reactorcraft_item_canister:9>, <advancedRocketry:lens>],
 [<RotaryCraft:rotarycraft_item_misccraft:2>, <RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<BuildCraft|Silicon:laserTableBlock>,
 [[<RotaryCraft:rotarycraft_item_shaftcraft>, <advancedRocketry:lens>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<PneumaticCraft:pneumaticCilinder>, <Eln:Eln.sharedItem:450>, <PneumaticCraft:pneumaticCilinder>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_borecraft:4>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<LogisticsPipes:item.PipeItemsBasicLogistics> * 4,
 [[<ore:ingotIron>, <ore:paneGlassColorless>, <ore:ingotIron>],
 [<LogisticsPipes:item.PipeItemsBasicTransport>, <ore:chipsetGold>, <LogisticsPipes:item.PipeItemsBasicTransport>],
 [<ore:ingotIron>, <ore:paneGlassColorless>, <ore:ingotIron>]]);
recipes.addShaped(<LogisticsPipes:item.PipeFluidBasic>,
 [[null, <ore:itemRubber>, null],
 [<ore:paneGlassColorless>, <LogisticsPipes:item.PipeItemsBasicLogistics>, <ore:paneGlassColorless>],
 [null, <ore:itemRubber>, null]]);
recipes.addShaped(<BuildCraft|Transport:filteredBufferBlock>,
 [[<ore:plankWood>, <RotaryCraft:rotarycraft_item_borecraft:4>, <ore:plankWood>],
 [<ore:plankWood>, <minecraft:chest>, <ore:plankWood>],
 [<ore:plankWood>, <minecraft:piston>, <ore:plankWood>]]);
recipes.addShapeless(<LogisticsPipes:item.PipeFluidExtractor>, [<LogisticsPipes:item.PipeFluidBasic>, <RotaryCraft:rotarycraft_item_enginecraft>]);
 
 
 
// LogisticsPipes and BuildCraft Shapeless
recipes.addShapeless(<BuildCraft|Transport:pipeWaterproof>, [<ore:itemRubber>]);
