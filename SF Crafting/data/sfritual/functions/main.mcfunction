
execute as @e[type=minecraft:marker,name=SF_craft_item] at @s positioned ~ ~.75 ~ if entity @e[type=item,distance=..1,tag=!SF_craft_tag_item] unless entity @e[type=item,distance=..1,tag=SF_craft_tag_item] unless entity @s[tag=SF_craft_tag_disable] run data merge entity @e[type=item,distance=..1,tag=!SF_craft_tag_item,limit=1] {NoGravity:1b,Age:-32768,Motion:[0.0,0.0,0.0],Tags:["SF_craft_tag_item"]}
execute as @e[type=minecraft:marker,name=SF_craft_item] at @s positioned ~ ~.75 ~ run tp @e[type=item,distance=..1,tag=SF_craft_tag_item] ~ ~ ~

execute as @e[type=minecraft:marker,name=SF_craft_item,tag=SF_craft_tag_disable] at @s positioned ~ ~.75 ~ run data merge entity @e[type=item,distance=..1,tag=SF_craft_tag_item,limit=1] {PickupDelay:32767}


execute as @e[type=minecraft:marker,name=SF_craft_main] at @s positioned ~ ~.75 ~ if entity @e[type=item,distance=..1,tag=!SF_craft_tag_item_main] unless entity @e[type=item,distance=..1,tag=SF_craft_tag_item_main] unless entity @s[tag=SF_craft_tag_disable] run data merge entity @e[type=item,distance=..1,tag=!SF_craft_tag_item_main,limit=1] {NoGravity:1b,Age:-32768,Motion:[0.0,0.0,0.0],Tags:["SF_craft_tag_item_main"]}
execute as @e[type=minecraft:marker,name=SF_craft_main] at @s positioned ~ ~.75 ~ run tp @e[type=item,distance=..1,tag=SF_craft_tag_item_main] ~ ~ ~

execute as @e[type=minecraft:marker,name=SF_craft_main,tag=SF_craft_tag_disable] at @s positioned ~ ~.75 ~ run data merge entity @e[type=item,distance=..1,tag=SF_craft_tag_item_main,limit=1] {PickupDelay:32767}


execute as @e[type=armor_stand,name=SF_craft_pillar] at @s unless entity @e[type=marker,name=SF_craft_item,distance=..1] run kill @s
execute as @e[type=marker,name=SF_craft_item] at @s unless entity @e[type=minecraft:marker,name=SF_craft_main, distance=..4] run kill @s
execute as @e[type=minecraft:marker,name=SF_craft_rotate] at @s unless entity @e[type=marker,name=SF_craft_main,distance=..1] run kill @s
execute as @e[type=minecraft:armor_stand,name=SF_craft_structure] at @s unless entity @e[type=marker,name=SF_craft_main,distance=..2] run kill @s

execute as @e[type=minecraft:marker,name=SF_craft_main] at @s unless block ~1 ~ ~1 #minecraft:candles run tag @s add SF_craft_kill
execute as @e[type=minecraft:marker,name=SF_craft_main] at @s unless block ~-1 ~ ~1 #minecraft:candles run tag @s add SF_craft_kill
execute as @e[type=minecraft:marker,name=SF_craft_main] at @s unless block ~1 ~ ~-1 #minecraft:candles run tag @s add SF_craft_kill
execute as @e[type=minecraft:marker,name=SF_craft_main] at @s unless block ~-1 ~ ~-1 #minecraft:candles run tag @s add SF_craft_kill
execute as @e[type=minecraft:marker,name=SF_craft_main,tag=SF_craft_kill] at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1
execute as @e[type=minecraft:marker,name=SF_craft_main,tag=SF_craft_kill] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~
execute as @e[type=minecraft:marker,name=SF_craft_main,tag=SF_craft_kill] at @s run kill @e[type=item,distance=..4,tag=SF_craft_tag_item]
execute as @e[type=minecraft:marker,name=SF_craft_main,tag=SF_craft_kill] at @s run kill @e[type=item,distance=..4,tag=SF_craft_tag_item_main]
execute as @e[type=minecraft:marker,name=SF_craft_main,tag=SF_craft_kill] at @s run kill @s




execute as @e[type=minecraft:marker,name=SF_craft_main] at @s if entity @e[type=item,distance=..1,tag=SF_craft_tag_item_main] run tag @e[type=minecraft:marker,name=SF_craft_item,distance=..4] add SF_craft_tag_disable
execute as @e[type=minecraft:marker,name=SF_craft_main] at @s unless entity @e[type=item,distance=..1,tag=SF_craft_tag_item_main] run tag @e[type=minecraft:marker,name=SF_craft_item,distance=..4] remove SF_craft_tag_disable

execute as @e[type=minecraft:marker,name=SF_craft_main] at @s if entity @e[type=item,distance=..1,tag=SF_craft_tag_item_main] run tag @s add SF_craft_tag_disable
execute as @e[type=minecraft:marker,name=SF_craft_main] at @s unless entity @e[type=item,distance=..1,tag=SF_craft_tag_item_main] run tag @s remove SF_craft_tag_disable

execute as @e[type=minecraft:marker,name=SF_craft_main] at @s if entity @e[type=item,distance=..1,tag=SF_craft_tag_item_main] run tag @s add SF_craft_tag_start

#execute as @e[type=minecraft:marker,name=SF_craft_main,tag=SF_craft_tag_start] if score @s SF_craft_timer matches 10 at @s

execute as @e[type=minecraft:marker,name=SF_craft_main,tag=SF_craft_tag_start] if score @s SF_craft_timer matches 1 at @s as @e[type=item,tag=SF_craft_tag_item,distance=..4] run data modify entity @e[type=minecraft:marker,name=SF_craft_main,limit=1] data.SF_craft_items append from entity @s Item

#execute as @e[type=minecraft:marker,name=SF_craft_main,tag=SF_craft_tag_start] if score @s SF_craft_timer matches 10..50 at @s at @e[type=minecraft:marker,name=SF_craft_item,tag=SF_craft_item_1,distance=..4] at @e[type=item,distance=..1,tag=SF_craft_tag_item] run particle minecraft:falling_obsidian_tear ~ ~ ~ .1 .1 .1 0 10
execute as @e[type=minecraft:marker,name=SF_craft_main,tag=SF_craft_tag_start] if score @s SF_craft_timer matches 50 at @s at @e[type=minecraft:marker,name=SF_craft_item,tag=SF_craft_item_1,distance=..4] as @e[type=item,distance=..1,tag=SF_craft_tag_item] run kill @s
execute as @e[type=minecraft:marker,name=SF_craft_main,tag=SF_craft_tag_start] if score @s SF_craft_timer matches 100 at @s at @e[type=minecraft:marker,name=SF_craft_item,tag=SF_craft_item_2,distance=..4] as @e[type=item,distance=..1,tag=SF_craft_tag_item] run kill @s
execute as @e[type=minecraft:marker,name=SF_craft_main,tag=SF_craft_tag_start] if score @s SF_craft_timer matches 150 at @s at @e[type=minecraft:marker,name=SF_craft_item,tag=SF_craft_item_3,distance=..4] as @e[type=item,distance=..1,tag=SF_craft_tag_item] run kill @s
execute as @e[type=minecraft:marker,name=SF_craft_main,tag=SF_craft_tag_start] if score @s SF_craft_timer matches 200 at @s at @e[type=minecraft:marker,name=SF_craft_item,tag=SF_craft_item_4,distance=..4] as @e[type=item,distance=..1,tag=SF_craft_tag_item] run kill @s
execute as @e[type=minecraft:marker,name=SF_craft_main,tag=SF_craft_tag_start] if score @s SF_craft_timer matches 250 at @s at @e[type=minecraft:marker,name=SF_craft_item,tag=SF_craft_item_5,distance=..4] as @e[type=item,distance=..1,tag=SF_craft_tag_item] run kill @s


execute as @e[type=minecraft:marker,name=SF_craft_main,tag=SF_craft_tag_start] if score @s SF_craft_timer matches 300.. at @s as @e[type=item,distance=..1,tag=SF_craft_tag_item_main] run kill @s
execute as @e[type=minecraft:marker,name=SF_craft_main,tag=SF_craft_tag_start] if score @s SF_craft_timer matches 301.. at @s run data merge entity @s {data:[]}
execute as @e[type=minecraft:marker,name=SF_craft_main,tag=SF_craft_tag_start] if score @s SF_craft_timer matches 301.. at @s run tag @s remove SF_craft_tag_start
execute as @e[type=minecraft:marker,name=SF_craft_main] if score @s SF_craft_timer matches 301.. at @s run scoreboard players set @s SF_craft_timer 0


execute as @e[type=minecraft:marker,name=SF_craft_main,tag=SF_craft_tag_start] at @s run scoreboard players add @s SF_craft_timer 1


#execute as @e[type=minecraft:marker] at @s run data modify entity @s data.SF_craft_items append from entity @e[type=item,limit=1] Item
#execute as @e[type=minecraft:marker,nbt={data:{SF_craft_items:[{id:"minecraft:"},{id:"minecraft:"},{id:"minecraft:"},{id:"minecraft:"},{id:"minecraft:"}]}}] run say hi

#execute as @e[type=minecraft:marker,name=SF_craft_main,nbt={data:{SF_craft_items:[{ITEM DATA 1},{ITEM DATA 2},{ITEM DATA 3},{ITEM DATA 4},{ITEM DATA 5}]}}] at @s if score @s SF_craft_timer matches 300 positioned ~ ~.75 ~ if entity @e[type=item,distance=..1,tag=SF_craft_tag_item_main,nbt={Item:{ITEM DATA MIDDLE}}] run summon item ~ ~1.2 ~ {NoGravity:1b,Tags:["SF_craft_crafted"],Item:{ITEM DATA OUT}}


