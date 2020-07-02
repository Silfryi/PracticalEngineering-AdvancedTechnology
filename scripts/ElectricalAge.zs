//Import
import mods.nei.NEI.hide;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;


//Hide Useless items like ferrite ingot & gold plate (Why does it keep reappearing in NEI!?!?) (Why if I remove one does the entire _item ID_ go away?!?!?, commenting these out)
//hide(<Eln:Eln.sharedItem:518>);
//hide(<Eln:Eln.sharedItem:7688>);
//hide(<Eln:Eln.sharedItem:4427>);
//hide(<Eln:Eln.sharedItem:4428>);
//Technical blocks that shouldn't be in NEI
hide(<Eln:Eln.lightBlock>);
hide(<Eln:Eln.ghostBlock>);
//hide(<Eln:Eln.SixNode:8000>);
//Machines that are unused
//hide(<Eln:Eln.TransparentNode:2176>);


//Remove alloy dust recipe to move into IE Arc Furnace
recipes.remove(<ore:dustAlloy>);

//Machine pieces
recipes.remove(<Eln:Eln.sharedItem:7703>);
recipes.remove(<Eln:Eln.sharedItem:7735>);
recipes.remove(<Eln:Eln.sharedItem:7682>);
recipes.addShaped(<Eln:Eln.sharedItem:7703>,
 [[<ore:plateAlloy>, <ore:circuitAdvanced>, <ore:plateAlloy>],
 [<ore:materialResin>, <Eln:Eln.sharedItem:4160>, <ore:materialResin>],
 [<ore:plateAlloy>, <ore:materialResin>, <ore:plateAlloy>]]);
recipes.addShaped(<Eln:Eln.sharedItem:7682>,
 [[<ore:plateSteel>, <ore:circuitBasic>, <ore:plateSteel>],
 [<ore:materialResin>, <Eln:Eln.sharedItem:4160>, <ore:materialResin>],
 [<ore:plateSteel>, <ore:materialResin>, <ore:plateSteel>]]);
 
//Power transmission changes
recipes.remove(<Eln:Eln.SixNode:2064>);
recipes.remove(<Eln:Eln.TransparentNode:453>);
recipes.addShaped(<Eln:Eln.SixNode:2064> * 12,
 [[<ore:sheetRubber>, <ore:sheetRubber>, <ore:sheetRubber>],
 [<customitems:annealedcopperwire>, <customitems:annealedcopperwire>, <customitems:annealedcopperwire>],
 [<ore:sheetRubber>, <ore:sheetRubber>, <ore:sheetRubber>]]);
recipes.addShaped(<Eln:Eln.TransparentNode:453>, 
 [[<ore:plateIron>, null, <ore:ingotTungsten>],
 [null, <ore:plateIron>, <ore:circuitAdvanced>],
 [<ore:plateIron>, null, <ore:ingotTungsten>]]);

//Experimental battery not requiring diamonds
recipes.remove(<Eln:Eln.TransparentNode:1030>);
recipes.addShaped(<Eln:Eln.TransparentNode:1030>, 
 [[<ore:plateLead>, <Eln:Eln.TransparentNode:1025>, <ore:plateLead>],
 [<Eln:Eln.TransparentNode:1026>, null, <Eln:Eln.TransparentNode:1027>],
 [<ore:plateLead>, <Eln:Eln.TransparentNode:1028>, <ore:plateLead>]]);

//Turbine and machine pieces
//Machines
recipes.remove(<Eln:Eln.TransparentNode:2176>);
recipes.remove(<Eln:Eln.TransparentNode:2116>);
recipes.remove(<Eln:Eln.TransparentNode:2688>);
recipes.remove(<Eln:Eln.TransparentNode:4224>);
//Solar Panels to Precision Assembler
recipes.remove(<Eln:Eln.TransparentNode:3075>);
//Turbine pieces
recipes.remove(<Eln:Eln.TransparentNode:266>);
recipes.addShaped(<Eln:Eln.TransparentNode:265>,
 [[null, <ore:ingotTungsten>, null],
 [<ore:ingotTungsten>, <ore:blockSteel>, <ore:ingotTungsten>],
 [null, <Eln:Eln.sharedItem:7703>, null]]);
recipes.addShaped(<Eln:Eln.TransparentNode:266>,
 [[<PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>, <PneumaticCraft:plastic:15>],
 [<Eln:Eln.sharedItem:641>, <ore:ingotAluminum>, <Eln:Eln.sharedItem:641>],
 [null, <Eln:Eln.sharedItem:7703>, <Eln:Eln.SixNode:2060>]]);
recipes.addShaped(<Eln:Eln.TransparentNode:2116>, 
 [[<ore:ingotAlloy>, <ore:circuitAdvanced>, <ore:ingotAlloy>],
 [<ore:dustDiamond>, <Eln:Eln.sharedItem:7703>, <ore:dustDiamond>],
 [<ore:ingotAlloy>, <Eln:Eln.sharedItem:641>, <ore:ingotAlloy>]]);
recipes.addShaped(<Eln:Eln.TransparentNode:4224>,
 [[<Eln:Eln.sharedItem:4162>, <minecraft:redstone_block>, <Eln:Eln.sharedItem:4162>],
 [<ore:circuitAdvanced>, <Eln:Eln.sharedItem:7703>, <ore:circuitAdvanced>],
 [null, <Eln:Eln.SixNode:2060>, null]]);
recipes.addShaped(<Eln:Eln.TransparentNode:2688>,
 [[<Eln:Eln.sharedItem:641>, <ore:circuitAdvanced>, <Eln:Eln.sharedItem:641>],
 [<Eln:Eln.sharedItem:7703>, <Eln:Eln.sharedItem:1024>, <Eln:Eln.sharedItem:7703>],
 [<Eln:Eln.sharedItem:4162>, <Eln:Eln.sharedItem:1088>, <Eln:Eln.sharedItem:4162>]]);

//Change energy converters to better match their respective tiers
recipes.remove(<Eln:eln.EnergyConverterElnToOtherMVUBlock>);
recipes.remove(<Eln:eln.EnergyConverterElnToOtherHVUBlock>);
recipes.addShaped(<Eln:eln.EnergyConverterElnToOtherMVUBlock>,
 [[<Eln:Eln.sharedItem:4161>, <Eln:Eln.sharedItem:4161>, <Eln:Eln.sharedItem:4161>],
 [<Eln:Eln.SixNode:2056>, <ore:circuitBasic>, <ore:ingotGold>], 
 [<Eln:Eln.sharedItem:4161>, <Eln:Eln.sharedItem:4161>, <Eln:Eln.sharedItem:4161>]]);
recipes.addShaped(<Eln:eln.EnergyConverterElnToOtherHVUBlock>,
 [[<Eln:Eln.sharedItem:4161>, <Eln:Eln.sharedItem:4161>, <Eln:Eln.sharedItem:4161>],
 [<Eln:Eln.SixNode:2060>, <ore:circuitAdvanced>, <ore:ingotTungsten>], 
 [<Eln:Eln.sharedItem:4161>, <Eln:Eln.sharedItem:4161>, <Eln:Eln.sharedItem:4161>]]);

//Drills
recipes.remove(<Eln:Eln.sharedItem:960>);
recipes.remove(<Eln:Eln.sharedItem:961>);
recipes.remove(<Eln:Eln.sharedItem:962>);
recipes.addShaped(<Eln:Eln.sharedItem:960>,
 [[<Eln:Eln.sharedItem:7680>, <Eln:Eln.sharedItem:640>, <Eln:Eln.sharedItem:7680>],
 [null, <Eln:Eln.sharedItem:1088>, null], 
 [null, <RotaryCraft:rotarycraft_item_borecraft>, null]]);
recipes.addShaped(<Eln:Eln.sharedItem:961>,
 [[<ore:dustRedstone>, <Eln:Eln.sharedItem:7680>, <ore:dustRedstone>],
 [<ore:dustDiamond>, <Eln:Eln.sharedItem:960>, <ore:dustDiamond>], 
 [null, <ore:dustDiamond>, null]]);
recipes.addShaped(<Eln:Eln.sharedItem:962>,
 [[<Eln:Eln.sharedItem:641>, <Eln:Eln.sharedItem:7681>, <Eln:Eln.sharedItem:641>],
 [<ore:dustDiamond>, <Eln:Eln.sharedItem:1088>, <ore:dustDiamond>], 
 [null, <RotaryCraft:rotarycraft_item_borecraft>, null]]);

//Silicon replacement in LEDs
recipes.remove(<Eln:Eln.sharedItem:293>);
recipes.remove(<Eln:Eln.sharedItem:294>);
recipes.addShaped(<Eln:Eln.sharedItem:293> * 2,
 [[<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>],
 [<ore:ingotSilicon>, <ore:ingotSilicon>, <ore:ingotSilicon>],
 [null, <Eln:Eln.SixNode:2052>, null]]);
recipes.addShaped(<Eln:Eln.sharedItem:294> * 2,
 [[<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>],
 [<ore:ingotSilicon>, <ore:ingotSilicon>, <ore:ingotSilicon>],
 [null, <Eln:Eln.SixNode:2056>, null]]);


//Wireless conversion because there's only a single item different
recipes.addShapeless(<Eln:Eln.SixNode:5896>, [<Eln:Eln.SixNode:5888>, <ore:dustRedstone>]);
