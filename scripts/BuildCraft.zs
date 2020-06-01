//Import
import minetweaker.item.IItemStack;
import mods.nei.NEI.hide;



//Arrays for removal and hiding
var toRemove = [<BuildCraft|Silicon:laserBlock>,
                <BuildCraft|Silicon:laserTableBlock>,
                <LogisticsPipes:item.remoteOrdererItem>
                ] as IItemStack[];
                
var toHide = [//Technical blocks
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
recipes.addShaped(<LogisticsPipes:item.PipeItemsBasicLogistics> * 12,
 [[<RotaryCraft:rotarycraft_block_blastglass>, <ore:chipsetGold>, <RotaryCraft:rotarycraft_block_blastglass>],
 [<BuildCraft|Transport:item.buildcraftPipe.pipeitemsquartz>, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsgold>, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsquartz>],
 [null, <ore:chipsetGold>, null]]);
recipes.addShaped(<LogisticsPipes:item.PipeItemsBasicLogistics> * 8,
 [[<ore:blockGlassColorless>, <ore:chipsetGold>, <ore:blockGlassColorless>],
 [<BuildCraft|Transport:item.buildcraftPipe.pipeitemsquartz>, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsgold>, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsquartz>],
 [null, <ore:chipsetGold>, null]]);
 
 
 
// LogisticsPipes and BuildCraft Shapeless
recipes.addShapeless(<BuildCraft|Transport:pipeWaterproof>, [<ore:itemRubber>]);
