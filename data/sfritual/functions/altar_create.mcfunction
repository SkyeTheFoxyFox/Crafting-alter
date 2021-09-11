#execute align xyz positioned ~.5 ~.5 ~.5 unless entity @e[type=minecraft:marker,name=SF_craft_main,distance=..8] run function sfritual:altar_create

summon marker ~ ~ ~ {CustomName:'{"text":"SF_craft_main"}'}
summon marker ~ ~ ~ {CustomName:'{"text":"SF_craft_rotate"}'}


summon marker ~ ~ ~3 {Tags:["SF_craft_item_1"],CustomName:'{"text":"SF_craft_item"}'}
summon marker ~-2.85 ~ ~.93 {Tags:["SF_craft_item_2"],CustomName:'{"text":"SF_craft_item"}'}
summon marker ~-1.76 ~ ~-2.43 {Tags:["SF_craft_item_3"],CustomName:'{"text":"SF_craft_item"}'}
summon marker ~1.76 ~ ~-2.43 {Tags:["SF_craft_item_4"],CustomName:'{"text":"SF_craft_item"}'}
summon marker ~2.85 ~ ~.93 {Tags:["SF_craft_item_5"],CustomName:'{"text":"SF_craft_item"}'}


summon armor_stand ~ ~-.5 ~3 {Marker:1b,NoGravity:1b,Small:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:deepslate_tiles",Count:1b}],CustomName:'{"text":"SF_craft_pillar"}'}
summon armor_stand ~-2.85 ~-.5 ~.93 {Marker:1b,NoGravity:1b,Small:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:deepslate_tiles",Count:1b}],CustomName:'{"text":"SF_craft_pillar"}'}
summon armor_stand ~-1.76 ~-.5 ~-2.43 {Marker:1b,NoGravity:1b,Small:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:deepslate_tiles",Count:1b}],CustomName:'{"text":"SF_craft_pillar"}'}
summon armor_stand ~1.76 ~-.5 ~-2.43 {Marker:1b,NoGravity:1b,Small:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:deepslate_tiles",Count:1b}],CustomName:'{"text":"SF_craft_pillar"}'}
summon armor_stand ~2.85 ~-.5 ~.93 {Marker:1b,NoGravity:1b,Small:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:deepslate_tiles",Count:1b}],CustomName:'{"text":"SF_craft_pillar"}'}

summon armor_stand ~ ~-1.88 ~ {Marker:1b,NoGravity:1b,Small:0b,Invisible:1b,Motion:[0.0,0.0,0.0],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:lapis_block",Count:1b}],CustomName:'{"text":"SF_craft_structure"}'}
summon armor_stand ~ ~-1.88 ~.625 {Marker:1b,NoGravity:1b,Small:0b,Invisible:1b,Motion:[0.0,0.0,0.0],Pose:{Head:[0f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:deepslate_brick_stairs",Count:1b}],CustomName:'{"text":"SF_craft_structure"}'}
summon armor_stand ~-.625 ~-1.88 ~ {Marker:1b,NoGravity:1b,Small:0b,Invisible:1b,Motion:[0.0,0.0,0.0],Pose:{Head:[0f,90f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:deepslate_brick_stairs",Count:1b}],CustomName:'{"text":"SF_craft_structure"}'}
summon armor_stand ~ ~-1.88 ~-.625 {Marker:1b,NoGravity:1b,Small:0b,Invisible:1b,Motion:[0.0,0.0,0.0],Pose:{Head:[0f,180f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:deepslate_brick_stairs",Count:1b}],CustomName:'{"text":"SF_craft_structure"}'}
summon armor_stand ~.625 ~-1.88 ~ {Marker:1b,NoGravity:1b,Small:0b,Invisible:1b,Motion:[0.0,0.0,0.0],Pose:{Head:[0f,270f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:deepslate_brick_stairs",Count:1b}],CustomName:'{"text":"SF_craft_structure"}'}
