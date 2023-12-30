### creating scoreboard objectives
scoreboard objectives add rotation_x dummy
scoreboard objectives add rotation_y dummy
scoreboard objectives add direction_x dummy
scoreboard objectives add direction_y dummy
scoreboard players set @s direction_x 0
scoreboard players set @s direction_y 0

### getting the player's rotation values
execute store result score @s rotation_x run data get entity @s Rotation[0]
execute store result score @s rotation_y run data get entity @s Rotation[1]

### setting direction_x's value based on rotation_x's value (1 is south, 2 is east, 3 is west, 4 is north)
execute if score @s rotation_x matches -45.. if score @s rotation_x matches ..45 run scoreboard players set @s direction_x 4
execute if score @s rotation_x matches ..-45 if score @s rotation_x matches -135.. run scoreboard players set @s direction_x 3
execute if score @s rotation_x matches 45.. if score @s rotation_x matches ..135 run scoreboard players set @s direction_x 2
execute if score @s direction_x matches 0 run scoreboard players set @s direction_x 1

### setting direction_y's value based on rotation_y's value (1 is up, 2 is forward, 3 is down)
execute if score @s rotation_y matches ..-60 if score @s rotation_y matches -90.. run scoreboard players set @s direction_y 3
execute if score @s rotation_y matches ..60 if score @s rotation_y matches -60.. run scoreboard players set @s direction_y 2
execute if score @s direction_y matches 0 run scoreboard players set @s direction_y 1

### if player is facing up or down, direction is set to 0 (null)
execute unless score @s direction_y matches 2 run scoreboard players set @s direction_x 0