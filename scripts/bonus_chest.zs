import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.data.IData;

val bonusChest = LootTables.getTable("minecraft:chests/spawn_bonus_chest");

//remove biomesop fruits
val bonus_main = bonusChest.getPool("main");
bonus_main.removeItemEntry(<biomesoplenty:pear>);
bonus_main.removeItemEntry(<biomesoplenty:peach>);
bonus_main.removeItemEntry(<biomesoplenty:persimmon>);

//already added Akashic Tome as a quest reward

//add modifier
val starterKit = bonusChest.addPool("starterKit", 1, 2, 0, 0);
starterKit.addItemEntryHelper(<oeintegration:excavatemodifier> * 1, 1, 1, [Functions.setCount(25, 75)], []);

//enchant tools
bonus_main.removeItemEntry(<minecraft:stone_axe>);
bonus_main.addItemEntryHelper(<minecraft:stone_axe>.withTag({ench:[{id:42,lvl:1},{id:41,lvl:1}]}) * 1, 1, 0, [], []);
bonus_main.removeItemEntry(<minecraft:wooden_axe>);
bonus_main.addItemEntryHelper(<minecraft:wooden_axe>.withTag({ench:[{id:42,lvl:1},{id:41,lvl:1}]}) * 1, 3, 0, [], []);
val bonus_pool1 = bonusChest.getPool("pool1");
bonus_pool1.removeItemEntry(<minecraft:stone_pickaxe>);
bonus_pool1.addItemEntryHelper(<minecraft:stone_pickaxe>.withTag({ench:[{id:43,lvl:1},{id:41,lvl:1}]}) * 1, 1, 0, [], []);
bonus_pool1.removeItemEntry(<minecraft:wooden_pickaxe>);
bonus_pool1.addItemEntryHelper(<minecraft:wooden_pickaxe>.withTag({ench:[{id:43,lvl:1},{id:41,lvl:1}]}) * 1, 3, 0, [], []);