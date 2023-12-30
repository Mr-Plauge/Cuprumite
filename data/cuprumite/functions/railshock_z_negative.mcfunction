### creating scoreboard objectives
scoreboard objectives add raycast_life dummy

### playing sounds
playsound ancient:cuprumite.shoot player @a ~ ~ ~ 1 1

### displaying railshock rod boundaries via particle effects
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~2 ~2 ~2
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~2 ~2 ~-2
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~-2 ~2 ~2
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~-2 ~2 ~-2
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~2 ~2 ~
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~-2 ~2 ~
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~ ~2 ~2
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~ ~2 ~-2

particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~2 ~ ~2
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~2 ~ ~-2
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~-2 ~ ~2
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~-2 ~ ~-2
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~2 ~ ~
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~-2 ~ ~
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~ ~ ~2
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~ ~ ~-2

particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~2 ~-2 ~2
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~2 ~-2 ~-2
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~-2 ~-2 ~2
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~-2 ~-2 ~-2
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~2 ~-2 ~
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~-2 ~-2 ~
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~ ~-2 ~2
particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~ ~-2 ~-2

### moving copper blocks row by row, layer by layer. Starts in the direction the copper is moving
execute positioned ~-2 ~2 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~2 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~2 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~2 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~2 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~-1 ~2 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~2 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~2 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~2 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~2 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~ ~2 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~2 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~2 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~2 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~2 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~1 ~2 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~2 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~2 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~2 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~2 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~2 ~2 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~2 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~2 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~2 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~2 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~-2 ~1 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~1 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~1 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~1 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~1 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~-1 ~1 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~1 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~ ~1 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~1 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~1 ~1 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~1 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~2 ~1 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~1 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~1 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~1 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~1 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~-2 ~ ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~ ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~ ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~ ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~ ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~-1 ~ ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~ ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~ ~ ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~ ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~ ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~1 ~ ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~ ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~2 ~ ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~ ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~ ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~ ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~ ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~-2 ~-1 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~-1 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~-1 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~-1 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~-1 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~-1 ~-1 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~-1 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~ ~-1 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~-1 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~1 ~-1 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~-1 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~2 ~-1 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~-1 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~-1 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~-1 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~-1 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~-2 ~-2 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~-2 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~-2 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~-2 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-2 ~-2 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~-1 ~-2 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~-2 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~-2 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~-2 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~-1 ~-2 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~ ~-2 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~-2 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~-2 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~-2 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~ ~-2 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~1 ~-2 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~-2 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~-2 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~-2 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~1 ~-2 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative

execute positioned ~2 ~-2 ~-2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~-2 ~-1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~-2 ~ if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~-2 ~1 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative
execute positioned ~2 ~-2 ~2 if block ~ ~ ~ minecraft:lightning_rod[facing=north] run function cuprumite:raycast_z_negative