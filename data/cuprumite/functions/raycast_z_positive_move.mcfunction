execute unless score @s raycast_life matches 0.. run scoreboard players set @s raycast_life 64
scoreboard players remove @s raycast_life 1
particle minecraft:dust_color_transition 1 1 1 1 0 0 0
execute as @e[tag=!raycast,distance=..1] run function cuprumite:railshock_effects
execute positioned ~ ~ ~0.5 unless score @s raycast_life matches ..0 run function cuprumite:raycast_z_positive_move