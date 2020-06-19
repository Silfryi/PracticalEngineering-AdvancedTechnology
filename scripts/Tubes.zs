//Import
import mods.nei.NEI.hide;
import minetweaker.item.IItemStack;



//Arrays for removal and hiding
var toHide = [<Tubes:fluidCircuit>,
              <Tubes:redstoneCircuit>,
              <Tubes:milkCurd>,
              <Tubes:blockPlastic>,
              <Tubes:dustPlastic>,
              <Tubes:sheetPlastic>
              ] as IItemStack[];

var toRemove = [<Tubes:tube>
                ] as IItemStack[];

//Remove and hide what all needs it
for item in toRemove{
    recipes.remove(item);
}
for item in toHide{
    recipes.remove(item);
    hide(item);
}

//Readd tubes recipes
recipes.addShaped(<Tubes:tube>.withTag({tube: "basic"}) * 4,
 [[<ore:stickIron>, <PneumaticCraft:plastic:15>, <ore:stickIron>],
 [<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>],
 [<ore:stickIron>, <PneumaticCraft:plastic:15>, <ore:stickIron>]]);
recipes.addShaped(<Tubes:tube>.withTag({tube: "basic"}) * 4,
 [[<ore:stickAluminum>, <PneumaticCraft:plastic:15>, <ore:stickAluminum>],
 [<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>],
 [<ore:stickAluminum>, <PneumaticCraft:plastic:15>, <ore:stickAluminum>]]);
recipes.addShaped(<Tubes:tube>.withTag({tube: "requesting"}),
 [[<Tubes:tube>.withTag({tube: "basic"})],
 [<Tubes:tube>.withTag({tube: "extraction"})],
 [<Tubes:tube>.withTag({tube: "filter"})]]);
recipes.addShaped(<Tubes:tube>.withTag({tube: "roundrobin"}),
 [[<ore:ingotIron>, <Tubes:tube>.withTag({tube: "basic"}), <ore:ingotIron>],
 [<Tubes:tube>.withTag({tube: "basic"}), <Tubes:tube>.withTag({tube: "basic"}), <Tubes:tube>.withTag({tube: "basic"})],
 [<ore:ingotIron>, <Tubes:tube>.withTag({tube: "basic"}), <ore:ingotIron>]]);
recipes.addShaped(<Tubes:tube>.withTag({tube: "extraction"}),
 [[<RotaryCraft:rotarycraft_item_enginecraft>],
 [<minecraft:hopper>],
 [<Tubes:tube>.withTag({tube: "basic"})]]);
recipes.addShaped(<Tubes:tube>.withTag({tube: "filter"}),
 [[<ore:ingotIron>, <ore:paneGlassColorless>, <ore:ingotIron>],
 [<ore:barsIron>, <Tubes:tube>.withTag({tube: "basic"}), <ore:barsIron>],
 [<ore:ingotIron>, <ore:paneGlassColorless>, <ore:ingotIron>]]);
recipes.addShaped(<Tubes:tube>.withTag({tube: "routing"}),
 [[<ore:ingotIron>, <Tubes:tube>.withTag({tube: "basic"}), <ore:ingotIron>],
 [<Tubes:tube>.withTag({tube: "basic"}), <Tubes:tube>.withTag({tube: "filter"}), <Tubes:tube>.withTag({tube: "basic"})],
 [<ore:ingotIron>, <Tubes:tube>.withTag({tube: "basic"}), <ore:ingotIron>]]);
recipes.addShapeless(<Tubes:tube>.withTag({tube: "restriction"}), [<Tubes:tube>.withTag({tube: "basic"}), <ore:ingotIron>]);
recipes.addShapeless(<Tubes:tube>.withTag({tube: "ejection"}), [<Tubes:tube>.withTag({tube: "basic"}), <ore:blockGlassColorless>]);
recipes.addShaped(<Tubes:tube>.withTag({tube: "coloring"}),
 [[null, <ore:dye>, null],
 [<ore:dye>, <Tubes:tube>.withTag({tube: "basic"}), <ore:dye>],
 [null, <ore:dye>, null]]);
recipes.addShaped(<Tubes:tube>.withTag({tube: "buffer"}),
 [[<Tubes:tube>.withTag({tube: "basic"})],
 [<ore:chest>],
 [<Tubes:tube>.withTag({tube: "basic"})]]);
recipes.addShapeless(<Tubes:tube>.withTag({tube: "restriction"}), [<Tubes:tube>.withTag({tube: "basic"}), <ore:ingotIron>, <minecraft:lever>]);
recipes.addShaped(<Tubes:tube>.withTag({tube: "injection"}),
 [[null, <ore:plankWood>, null],
 [<ore:plankWood>, <Tubes:tube>.withTag({tube: "basic"}), <ore:plankWood>],
 [null, <ore:plankWood>, null]]);
recipes.addShaped(<Tubes:tube>.withTag({tube: "valve"}),
 [[<Tubes:tube>.withTag({tube: "roundrobin"}), <ore:barsIron>]]);
 
