import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.data.IData;

val bonusChest = LootTables.getTable("minecraft:chests/spawn_bonus_chest");

//remove biomesop fruits
bonus_main.removeItemEntry(<biomesoplenty:pear>);
bonus_main.removeItemEntry(<biomesoplenty:peach>);
bonus_main.removeItemEntry(<biomesoplenty:persimmon>);

//add Akashic Tome
val guide_book = bonusChest.addPool("guide_book", 1, 1, 0, 0);
val books = {
	"akashictome:is_morphing": 1 as byte,
	"akashictome:data": {
		extrautils2:{
			id: "extrautils2:book",
			Count: 1 as byte, 
			tag:{"akashictome:definedMod": "extrautils2"},
			Damage: 0 as short
		},
		tconstruct:
		{
			id: "tconstruct:book",
			Count: 1 as byte, 
			tag: {"akashictome:definedMod": "tconstruct"}, 
			Damage: 0 as short
		}, 
		immersiveengineering: 
		{
			id: "immersiveengineering:tool",
			Count: 1 as byte, 
			tag: {"akashictome:definedMod": "immersiveengineering"}, 
			Damage: 3 as short
		}, 
		magneticraft:
		{
			id: "magneticraft:guide_book",
			Count: 1 as byte, 
			tag: {"akashictome:definedMod": "magneticraft"}, 
			Damage: 0 as short
		}, 
		rftools:
		{
			id: "rftools:rftools_manual",
			Count: 1 as byte, 
			tag: {"akashictome:definedMod": "rftools"}, 
			Damage: 0 as short
		}, 
		rftools1:
		{
			id: "rftools:rftools_shape_manual",
			Count: 1 as byte, 
			tag: {"akashictome:definedMod": "rftools1"}, 
			Damage: 0 as short
		}, 
		xnet:
		{
			id: "xnet:xnet_manual",
			Count: 1 as byte, 
			tag: {"akashictome:definedMod": "xnet"}, 
			Damage: 0 as short
		}, 
	}
} as IData;
guide_book.addItemEntryHelper(<akashictome:tome>.withTag(books) * 1, 1, 1, [], []);

//add modifier
val starterKit = bonusChest.addPool("starterKit", 2, 6, 0, 0);
starterKit.addItemEntryHelper(<oeintegration:excavatemodifier> * 1, 1, 1, [count:{min:2,max:64}], []);

//enchant tools
val bonus_main = bonusChest.getPool("main");
bonus_main.removeItemEntry(<minecraft:stone_axe>);
bonus_main.addItemEntryHelper(<minecraft:stone_axe>.withTag({ench:[{id:28,lvl:5}]}) * 1, 1, 0, [], []);
bonus_main.removeItemEntry(<minecraft:wooden_axe>);
bonus_main.addItemEntryHelper(<minecraft:wooden_axe>.withTag({ench:[{id:28,lvl:5}]}) * 1, 3, 0, [], []);
val bonus_pool1 = bonusChest.getPool("pool1");
bonus_pool1.removeItemEntry(<minecraft:stone_pickaxe>);
bonus_pool1.addItemEntryHelper(<minecraft:stone_pickaxe>.withTag({ench:[{id:28,lvl:3}]}) * 1, 1, 0, [], []);
bonus_pool1.removeItemEntry(<minecraft:wooden_pickaxe>);
bonus_pool1.addItemEntryHelper(<minecraft:wooden_pickaxe>.withTag({ench:[{id:28,lvl:2}]}) * 1, 3, 0, [], []);
