scoreboard players set $prepare data 0
execute as @e[team=ready] run scoreboard players add $prepare data 1

# 等待转准备
execute if score $prepare data matches 2.. if score $0_start countdown matches 11.. as @a run playsound minecraft:entity.player.levelup player @s 0 1000000 0 1000000
execute if score $prepare data matches 2.. if score $0_start countdown matches 11.. run scoreboard players set $0_start countdown 10
execute if score $prepare data matches 2.. if score $0_start countdown matches 10.. run function main:state/0/refresh/bossbar

# 准备转等待
execute if score $prepare data matches ..1 if score $0_start countdown matches ..10 as @a run playsound minecraft:block.note_block.didgeridoo player @s 0 1000000 0 1000000
execute if score $prepare data matches ..1 if score $0_start countdown matches ..10 run function main:state/0/refresh/bossbar
execute if score $prepare data matches ..1 if score $0_start countdown matches ..10 run scoreboard players set $0_start countdown 7777777