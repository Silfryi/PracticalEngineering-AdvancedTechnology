//Import
import mods.nei.NEI.hide;



//Hide technical blocks
hide(<PortalGun:Portal_BlockMulti>);
hide(<PortalGun:PortalMulti:14>);



//Remove Needed (Spacing recipes to make sure they work because of weird behavior)
recipes.remove(<PortalGun:LongFallBoot>);
recipes.remove(<PortalGun:PortalGunBlue>);
recipes.remove(<PortalGun:AerialFaithPlate>);
recipes.remove(<PortalGun:MiniBlackHole>);
recipes.remove(<PortalGun:PortalGunSpawner>);



//Add back needed
recipes.addShapeless(<PortalGun:LongFallBoot> *2, [<PortalGun:LongFallBoots>]); 
recipes.addShaped(<PortalGun:LongFallBoot>, 
 [[null, <RotaryCraft:rotarycraft_item_shaftcraft:1>, <RotaryCraft:rotarycraft_item_gearcraft>],
 [<Eln:Eln.sharedItem:4097>, <Eln:Eln.sharedItem:4097>, <RotaryCraft:rotarycraft_item_compacts:9>],
 [<RotaryCraft:rotarycraft_item_shaftcraft:1>, <RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_compacts:9>]]);
recipes.addShaped(<PortalGun:AerialFaithPlate>, 
 [[<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [null, <RotaryCraft:rotarycraft_item_spring>, <RotaryCraft:rotarycraft_item_compacts:9>],
 [<RotaryCraft:rotarycraft_item_compacts:9>, <RotaryCraft:rotarycraft_item_compacts:9>, <RotaryCraft:rotarycraft_item_shaftcraft:1>]]);
recipes.addShaped(<PortalGun:PortalGunBlue>, 
 [[<RotaryCraft:rotarycraft_item_gearcraft:112>, <RotaryCraft:rotarycraft_block_blastglass>, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<ore:coilAluminum>, <PortalGun:MiniBlackHole>, <RotaryCraft:rotarycraft_item_enginecraft>],
 [<RotaryCraft:rotarycraft_item_gearcraft:112>, <RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<PortalGun:PortalGunSpawner>, 
 [[<RotaryCraft:rotarycraft_item_shaftcraft>, null, <RotaryCraft:rotarycraft_item_shaftcraft>],
 [<ore:coilAluminum>, <PortalGun:MiniBlackHole>, <ore:coilAluminum>],
 [<RotaryCraft:rotarycraft_item_shaftcraft>, <RotaryCraft:rotarycraft_block_blastglass>, <RotaryCraft:rotarycraft_item_shaftcraft>]]);
recipes.addShaped(<PortalGun:MiniBlackHole>, 
 [[<PortalGun:EnderPearlDust>, <ore:dustObsidian>, <PortalGun:EnderPearlDust>], 
 [<ore:dustObsidian>, <appliedenergistics2:item.ItemMultiMaterial:47>, <ore:dustObsidian>],
 [<PortalGun:EnderPearlDust>, <ore:dustObsidian>, <PortalGun:EnderPearlDust>]]);
