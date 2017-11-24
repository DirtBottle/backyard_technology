import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.data.IData;

//Shulker drops more shells
/*
val shulker = LootTables.getTable("minecraft:entities/shulker");
shulker.removePool("main");
val shulker_main = shulker.addPool("main", 1, 2, 0, 1);
shulker_main.addItemEntryHelper(<minecraft:shulker_shell> * 1, 1, 2, [Functions.parse("count:{min:0,max:1}, function:'minecraft:looting_enchant'")], []);
*/
//Dragon drops elytra & egg
val dragon = LootTables.getTable("minecraft:entities/ender_dragon");
val egg = dragon.addPool("egg", 1, 1, 0, 0);
egg.addItemEntryHelper(<minecraft:dragon_egg> * 1, 1, 1, [], []);
val elytra = dragon.addPool("elytra", 0, 1, 0, 1);
elytra.addItemEntryHelper(<minecraft:elytra> * 1, 1, 4, [Functions.setDamage(0.0,1.0)], [Conditions.randomChanceWithLooting(0.1,0.3)]);