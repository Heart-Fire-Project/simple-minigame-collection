# 清空背包
item replace entity @s inventory.0 with air
item replace entity @s inventory.1 with air
item replace entity @s inventory.2 with air
item replace entity @s inventory.3 with air
item replace entity @s inventory.4 with air
item replace entity @s inventory.5 with air
item replace entity @s inventory.6 with air
item replace entity @s inventory.7 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with air
item replace entity @s inventory.10 with air
item replace entity @s inventory.11 with air
item replace entity @s inventory.12 with air
item replace entity @s inventory.13 with air
item replace entity @s inventory.14 with air
item replace entity @s inventory.15 with air
item replace entity @s inventory.16 with air
item replace entity @s inventory.17 with air
item replace entity @s inventory.18 with air
item replace entity @s inventory.19 with air
item replace entity @s inventory.20 with air
item replace entity @s inventory.21 with air
item replace entity @s inventory.22 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.25 with air
item replace entity @s inventory.26 with air
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

# 清空物品栏格子
item replace entity @s hotbar.0 with air
item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air

# 探测改变状态
execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_model_data":70000}}]}] as @s run team join ready
execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_model_data":70000}}]}] as @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1000000 0.1 1
execute if score $gamelock data matches 0 if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:gray_dye"}]}] run function main:state/0/prepare_count
execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_model_data":70001}}]}] as @s run team join unready
execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_model_data":70001}}]}] as @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1000000 1 1
execute if score $gamelock data matches 0 if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:lime_dye"}]}] run function main:state/0/prepare_count

# 清除掉落物
kill @e[type=item,tag=!game_entity,tag=!lobby_entity]

# 刷新物品
item replace entity @s[team=unready] hotbar.8 with gray_dye
item replace entity @s[team=ready] hotbar.8 with lime_dye

# 处理数据
item modify entity @s[team=unready] hotbar.8 main:lobby/unready
item modify entity @s[team=ready] hotbar.8 main:lobby/ready

item replace entity @s weapon.offhand with air