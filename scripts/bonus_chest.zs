import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.data.IData;

val bonusChest = LootTables.getTable("minecraft:chests/spawn_bonus_chest");
val bonus_main = bonusChest.getPool("main");
val bonus_pool1 = bonusChest.getPool("pool1");
val bonus_pool2 = bonusChest.getPool("pool2");
val bonus_pool3 = bonusChest.getPool("pool3");

//remove biomesop fruits
bonus_main.removeItemEntry(<biomesoplenty:pear>);
bonus_main.removeItemEntry(<biomesoplenty:peach>);
bonus_main.removeItemEntry(<biomesoplenty:persimmon>);

//remove some EvilCraft stuff
bonus_main.removeItemEntry(<evilcraft:origins_of_darkness>);
bonus_main.removeItemEntry(<evilcraft:condensed_blood>);
bonus_main.removeItemEntry(<evilcraft:box_of_eternal_closure>);
bonus_pool1.removeItemEntry(<evilcraft:origins_of_darkness>);
bonus_pool1.removeItemEntry(<evilcraft:condensed_blood>);
bonus_pool1.removeItemEntry(<evilcraft:box_of_eternal_closure>);
bonus_pool2.removeItemEntry(<evilcraft:origins_of_darkness>);
bonus_pool2.removeItemEntry(<evilcraft:condensed_blood>);
bonus_pool2.removeItemEntry(<evilcraft:box_of_eternal_closure>);
bonus_pool3.removeItemEntry(<evilcraft:origins_of_darkness>);
bonus_pool3.removeItemEntry(<evilcraft:condensed_blood>);
bonus_pool3.removeItemEntry(<evilcraft:box_of_eternal_closure>);

//already added Akashic Tome as a quest reward

//add modifier
val starterKit = bonusChest.addPool("starterKit", 1, 2, 0, 0);
starterKit.addItemEntryHelper(<oeintegration:excavatemodifier> * 1, 1, 1, [Functions.setCount(25, 75)], []);

//enchant tools
bonus_main.removeItemEntry(<minecraft:stone_axe>);
bonus_main.addItemEntryHelper(<minecraft:stone_axe>.withTag({ench:[{id:42,lvl:1},{id:41,lvl:1}]}) * 1, 1, 0, [], []);
bonus_main.removeItemEntry(<minecraft:wooden_axe>);
bonus_main.addItemEntryHelper(<minecraft:wooden_axe>.withTag({ench:[{id:42,lvl:1},{id:41,lvl:1}]}) * 1, 3, 0, [], []);
bonus_pool1.removeItemEntry(<minecraft:stone_pickaxe>);
bonus_pool1.addItemEntryHelper(<minecraft:stone_pickaxe>.withTag({ench:[{id:43,lvl:1},{id:41,lvl:1}]}) * 1, 1, 0, [], []);
bonus_pool1.removeItemEntry(<minecraft:wooden_pickaxe>);
bonus_pool1.addItemEntryHelper(<minecraft:wooden_pickaxe>.withTag({ench:[{id:43,lvl:1},{id:41,lvl:1}]}) * 1, 3, 0, [], []);