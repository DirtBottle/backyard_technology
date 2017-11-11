import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.data.IData;

val bonusChest = LootTables.getTable("minecraft:chests/spawn_bonus_chest");

//add Akashic Tome
val guide_book = bonusChest.addPool("guide_book", 1, 1, 1, 1);
val books = {
	"akashictome:data":{
		"extrautils2":{
			id: 'extrautils2:book'
		},
		"immersiveengineering":{
			id: 'immersiveengineering:tool:3',
			Damage: 3
		},
		"magneticraft":{
			id: 'magneticraft:guide_book'
		},
		"rftools":{
			id: 'rftools:rftools_manual'
		},
		"rftools1":{
			id: 'rftools:rftools_shape_manual'
		},
		"tconstruct":{
			id: 'tconstruct:book'
		},
		"xnet":{
			id: 'xnet:xnet_manual'
		}
	}
}as IData;
guide_book.addItemEntryJSON(<akashictome:tome>.withTag(books) * 2, 1, 1, [], []);

//add modifier
val starterKit = bonusChest.addPool("starterKit", 1, 5, 0, 0);
starterKit.addItemEntryHelper(<oeintegration:excavatemodifier> * 1, 15, 1, [], []);