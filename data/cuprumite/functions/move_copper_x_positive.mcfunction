### unwaterlogging copper prior to moving it
function cuprumite:unwaterlog_copper

### moving entities that are standing on copper blocks
execute as @e[distance=..4] run execute as @s at @s if block ~ ~-1 ~ #cuprumite:usable_copper if block ~1 ~-1 ~ #cuprumite:air run teleport ~1 ~ ~
execute as @e[distance=..4] run execute as @s at @s if block ~ ~-1 ~ #cuprumite:usable_copper if block ~1 ~-1 ~ #cuprumite:usable_copper if block ~2 ~-1 ~ #cuprumite:air run teleport ~1 ~ ~
execute as @e[distance=..4] run execute as @s at @s if block ~ ~-1 ~ #cuprumite:usable_copper if block ~1 ~-1 ~ #cuprumite:usable_copper if block ~2 ~-1 ~ #cuprumite:usable_copper if block ~3 ~-1 ~ #cuprumite:air run teleport ~1 ~ ~
execute as @e[distance=..4] run execute as @s at @s if block ~ ~-1 ~ #cuprumite:usable_copper if block ~1 ~-1 ~ #cuprumite:usable_copper if block ~2 ~-1 ~ #cuprumite:usable_copper if block ~3 ~-1 ~ #cuprumite:usable_copper if block ~4 ~-1 ~ #cuprumite:air run teleport ~1 ~ ~
execute as @e[distance=..4] run execute as @s at @s if block ~ ~-1 ~ #cuprumite:usable_copper if block ~1 ~-1 ~ #cuprumite:usable_copper if block ~2 ~-1 ~ #cuprumite:usable_copper if block ~3 ~-1 ~ #cuprumite:usable_copper if block ~4 ~-1 ~ #cuprumite:usable_copper if block ~5 ~-1 ~ #cuprumite:air run teleport ~1 ~ ~
execute as @e[distance=..4] run execute as @s at @s if block ~ ~-1 ~ #cuprumite:usable_copper if block ~1 ~-1 ~ #cuprumite:usable_copper if block ~2 ~-1 ~ #cuprumite:usable_copper if block ~3 ~-1 ~ #cuprumite:usable_copper if block ~4 ~-1 ~ #cuprumite:usable_copper if block ~5 ~-1 ~ #cuprumite:usable_copper if block ~6 ~-1 ~ #cuprumite:air run teleport ~1 ~ ~
execute as @e[distance=..4] run execute as @s at @s if block ~ ~-1 ~ #cuprumite:usable_copper if block ~1 ~-1 ~ #cuprumite:usable_copper if block ~2 ~-1 ~ #cuprumite:usable_copper if block ~3 ~-1 ~ #cuprumite:usable_copper if block ~4 ~-1 ~ #cuprumite:usable_copper if block ~5 ~-1 ~ #cuprumite:usable_copper if block ~6 ~-1 ~ #cuprumite:usable_copper if block ~7 ~-1 ~ #cuprumite:air run teleport ~1 ~ ~
execute as @e[distance=..4] run execute as @s at @s if block ~ ~-1 ~ #cuprumite:usable_copper if block ~1 ~-1 ~ #cuprumite:usable_copper if block ~2 ~-1 ~ #cuprumite:usable_copper if block ~3 ~-1 ~ #cuprumite:usable_copper if block ~4 ~-1 ~ #cuprumite:usable_copper if block ~5 ~-1 ~ #cuprumite:usable_copper if block ~6 ~-1 ~ #cuprumite:usable_copper if block ~7 ~-1 ~ #cuprumite:usable_copper if block ~8 ~-1 ~ #cuprumite:air run teleport ~1 ~ ~

### playing sounds
playsound ancient:cuprumite.spark player @a ~ ~ ~ 1 2
playsound minecraft:block.copper.place player @a ~ ~ ~ 1 1.2

### displaying copper control boundaries via particle effects
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~4 ~4 ~4
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~4 ~4 ~-4
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~-4 ~4 ~4
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~-4 ~4 ~-4
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~4 ~4 ~
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~-4 ~4 ~
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~ ~4 ~4
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~ ~4 ~-4

particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~4 ~ ~4
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~4 ~ ~-4
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~-4 ~ ~4
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~-4 ~ ~-4
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~4 ~ ~
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~-4 ~ ~
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~ ~ ~4
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~ ~ ~-4

particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~4 ~-4 ~4
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~4 ~-4 ~-4
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~-4 ~-4 ~4
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~-4 ~-4 ~-4
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~4 ~-4 ~
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~-4 ~-4 ~
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~ ~-4 ~4
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~ ~-4 ~-4

### moving copper blocks row by row, layer by layer. Starts in the direction the copper is moving
execute positioned ~4 ~4 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~4 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~4 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~4 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~4 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~4 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~4 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~4 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~4 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~3 ~4 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~4 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~4 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~4 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~4 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~4 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~4 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~4 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~4 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~2 ~4 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~4 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~4 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~4 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~4 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~4 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~4 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~4 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~4 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~1 ~4 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~4 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~4 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~4 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~4 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~4 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~4 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~4 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~4 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~ ~4 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~4 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~4 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~4 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~4 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~4 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~4 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~4 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~4 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-1 ~4 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~4 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~4 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~4 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~4 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~4 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~4 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~4 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~4 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-2 ~4 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~4 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~4 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~4 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~4 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~4 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~4 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~4 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~4 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-3 ~4 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~4 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~4 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~4 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~4 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~4 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~4 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~4 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~4 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-4 ~4 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~4 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~4 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~4 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~4 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~4 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~4 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~4 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~4 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~4 ~3 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~3 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~3 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~3 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~3 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~3 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~3 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~3 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~3 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~3 ~3 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~3 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~3 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~3 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~3 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~3 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~3 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~3 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~3 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~2 ~3 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~3 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~3 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~3 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~3 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~3 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~3 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~3 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~3 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~1 ~3 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~3 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~3 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~3 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~3 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~3 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~3 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~3 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~3 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~ ~3 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~3 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~3 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~3 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~3 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~3 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~3 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~3 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~3 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-1 ~3 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~3 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~3 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~3 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~3 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~3 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~3 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~3 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~3 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-2 ~3 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~3 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~3 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~3 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~3 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~3 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~3 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~3 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~3 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-3 ~3 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~3 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~3 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~3 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~3 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~3 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~3 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~3 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~3 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-4 ~3 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~3 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~3 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~3 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~3 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~3 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~3 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~3 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~3 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~4 ~2 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~2 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~2 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~2 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~2 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~2 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~2 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~2 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~2 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~3 ~2 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~2 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~2 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~2 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~2 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~2 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~2 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~2 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~2 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~2 ~2 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~2 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~2 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~2 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~2 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~2 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~2 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~2 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~2 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~1 ~2 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~2 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~2 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~2 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~2 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~2 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~2 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~2 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~2 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~ ~2 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~2 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~2 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~2 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~2 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~2 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~2 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~2 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~2 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-1 ~2 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~2 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~2 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~2 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~2 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~2 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~2 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~2 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~2 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-2 ~2 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~2 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~2 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~2 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~2 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~2 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~2 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~2 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~2 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-3 ~2 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~2 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~2 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~2 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~2 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~2 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~2 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~2 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~2 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-4 ~2 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~2 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~2 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~2 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~2 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~2 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~2 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~2 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~2 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~4 ~1 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~1 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~1 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~1 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~1 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~1 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~1 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~1 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~1 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~3 ~1 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~1 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~1 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~1 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~1 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~1 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~1 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~1 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~1 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~2 ~1 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~1 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~1 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~1 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~1 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~1 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~1 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~1 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~1 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~1 ~1 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~1 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~1 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~1 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~1 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~1 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~1 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~ ~1 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~1 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~1 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~1 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~1 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~1 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~1 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~1 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-1 ~1 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~1 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~1 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~1 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~1 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~1 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-2 ~1 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~1 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~1 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~1 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~1 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~1 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~1 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~1 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~1 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-3 ~1 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~1 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~1 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~1 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~1 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~1 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~1 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~1 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~1 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-4 ~1 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~1 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~1 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~1 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~1 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~1 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~1 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~1 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~1 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~4 ~ ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~ ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~ ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~ ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~ ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~ ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~ ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~ ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~ ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~3 ~ ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~ ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~ ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~ ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~ ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~ ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~ ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~ ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~ ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~2 ~ ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~ ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~ ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~ ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~ ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~ ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~ ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~ ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~ ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~1 ~ ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~ ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~ ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~ ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~ ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~ ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~ ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~ ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~ ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~ ~ ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~ ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~ ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~ ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~ ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~ ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~ ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~ ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~ ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-1 ~ ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~ ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~ ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~ ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~ ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~ ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~ ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~ ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-2 ~ ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~ ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~ ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~ ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~ ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~ ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~ ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~ ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~ ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-3 ~ ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~ ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~ ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~ ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~ ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~ ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~ ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~ ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~ ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-4 ~ ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~ ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~ ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~ ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~ ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~ ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~ ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~ ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~ ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~4 ~-1 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-1 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-1 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-1 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-1 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-1 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-1 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-1 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-1 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~3 ~-1 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-1 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-1 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-1 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-1 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-1 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-1 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-1 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-1 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~2 ~-1 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-1 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-1 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-1 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-1 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-1 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-1 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-1 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-1 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~1 ~-1 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-1 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-1 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-1 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-1 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-1 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-1 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~ ~-1 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-1 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-1 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-1 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-1 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-1 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-1 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-1 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-1 ~-1 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-1 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-1 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-1 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-1 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-1 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-2 ~-1 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-1 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-1 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-1 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-1 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-1 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-1 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-1 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-1 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-3 ~-1 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-1 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-1 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-1 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-1 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-1 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-1 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-1 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-1 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-4 ~-1 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-1 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-1 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-1 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-1 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-1 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-1 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-1 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-1 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~4 ~-2 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-2 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-2 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-2 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-2 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-2 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-2 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-2 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-2 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~3 ~-2 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-2 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-2 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-2 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-2 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-2 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-2 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-2 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-2 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~2 ~-2 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-2 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-2 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-2 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-2 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-2 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-2 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-2 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-2 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~1 ~-2 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-2 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-2 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-2 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-2 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-2 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-2 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-2 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-2 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~ ~-2 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-2 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-2 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-2 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-2 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-2 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-2 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-2 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-2 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-1 ~-2 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-2 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-2 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-2 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-2 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-2 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-2 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-2 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-2 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-2 ~-2 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-2 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-2 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-2 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-2 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-2 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-2 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-2 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-2 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-3 ~-2 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-2 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-2 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-2 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-2 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-2 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-2 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-2 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-2 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-4 ~-2 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-2 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-2 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-2 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-2 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-2 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-2 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-2 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-2 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~4 ~-3 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-3 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-3 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-3 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-3 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-3 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-3 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-3 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-3 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~3 ~-3 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-3 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-3 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-3 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-3 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-3 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-3 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-3 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-3 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~2 ~-3 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-3 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-3 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-3 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-3 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-3 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-3 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-3 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-3 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~1 ~-3 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-3 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-3 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-3 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-3 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-3 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-3 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-3 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-3 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~ ~-3 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-3 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-3 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-3 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-3 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-3 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-3 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-3 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-3 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-1 ~-3 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-3 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-3 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-3 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-3 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-3 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-3 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-3 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-3 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-2 ~-3 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-3 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-3 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-3 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-3 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-3 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-3 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-3 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-3 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-3 ~-3 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-3 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-3 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-3 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-3 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-3 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-3 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-3 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-3 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-4 ~-3 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-3 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-3 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-3 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-3 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-3 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-3 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-3 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-3 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~4 ~-4 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-4 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-4 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-4 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-4 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-4 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-4 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-4 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~4 ~-4 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~3 ~-4 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-4 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-4 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-4 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-4 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-4 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-4 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-4 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~3 ~-4 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~2 ~-4 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-4 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-4 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-4 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-4 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-4 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-4 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-4 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~2 ~-4 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~1 ~-4 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-4 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-4 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-4 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-4 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-4 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-4 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-4 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~1 ~-4 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~ ~-4 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-4 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-4 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-4 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-4 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-4 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-4 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-4 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~ ~-4 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-1 ~-4 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-4 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-4 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-4 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-4 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-4 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-4 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-4 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-1 ~-4 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-2 ~-4 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-4 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-4 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-4 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-4 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-4 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-4 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-4 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-2 ~-4 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-3 ~-4 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-4 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-4 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-4 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-4 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-4 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-4 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-4 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-3 ~-4 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move

execute positioned ~-4 ~-4 ~4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-4 ~3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-4 ~2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-4 ~1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-4 ~ if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-4 ~-1 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-4 ~-2 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-4 ~-3 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move
execute positioned ~-4 ~-4 ~-4 if block ~ ~ ~ #cuprumite:usable_copper if block ~1 ~ ~ #cuprumite:air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ filtered #cuprumite:usable_copper move