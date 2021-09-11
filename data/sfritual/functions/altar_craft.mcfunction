execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:deepslate_tiles",Count:5b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:10b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:10b}},distance=..1] if block ~ ~-1 ~ minecraft:lapis_block if block ~ ~-1 ~1 minecraft:deepslate_brick_stairs if block ~ ~-1 ~-1 minecraft:deepslate_brick_stairs if block ~1 ~-1 ~ minecraft:deepslate_brick_stairs if block ~-1 ~-1 ~ minecraft:deepslate_brick_stairs if block ~1 ~-1 ~1 #minecraft:candles if block ~-1 ~-1 ~-1 #minecraft:candles if block ~1 ~-1 ~-1 #minecraft:candles if block ~-1 ~-1 ~1 #minecraft:candles unless entity @e[type=minecraft:marker,name=SF_craft_main,distance=..8] run tag @s add SF_craft_altar
execute as @e[type=item,tag=SF_craft_altar] at @s unless block ~ ~-1 ~1 minecraft:deepslate_brick_stairs[facing=north] unless block ~ ~-1 ~-1 minecraft:deepslate_brick_stairs[facing=south] unless block ~1 ~-1 ~ minecraft:deepslate_brick_stairs[facing=west] unless block ~-1 ~-1 ~ minecraft:deepslate_brick_stairs[facing=east] run advancement grant @a[distance=..20] only minecraft:wrong_stairs
execute as @e[type=item,tag=SF_craft_altar] at @s run tag @s add SF_craft_altar_items
execute as @e[type=item,tag=SF_craft_altar] at @s run tag @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:10b}},distance=..1] add SF_craft_altar_items
execute as @e[type=item,tag=SF_craft_altar] at @s run tag @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:10b}},distance=..1] add SF_craft_altar_items
execute as @e[type=item,tag=SF_craft_altar] at @s align xyz positioned ~.5 ~-.5 ~.5 run function sfritual:altar_create
execute as @e[type=item,tag=SF_craft_altar] at @s align xyz positioned ~.5 ~-.5 ~.5 run fill ~1 ~ ~ ~-1 ~ ~ air
execute as @e[type=item,tag=SF_craft_altar] at @s align xyz positioned ~.5 ~-.5 ~.5 run fill ~ ~ ~1 ~ ~ ~-1 air
kill @e[type=item,tag=SF_craft_altar_items]
