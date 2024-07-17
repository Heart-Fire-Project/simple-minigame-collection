# 人数不足
execute if score $prepare data matches ..1 run bossbar set smc:info color red
execute if score $prepare data matches ..1 run bossbar set smc:info name [{"translate":"smc.bossbar.0.wait","fallback":"等待准备 | 至少需要 2 人以开始","color":"red"}]
execute if score $prepare data matches ..1 store result bossbar smc:info value run scoreboard players get $prepare data
execute if score $prepare data matches ..1 run bossbar set smc:info max 2

# 人数足够
execute if score $prepare data matches 2.. run bossbar set smc:info color green
execute if score $prepare data matches 2.. run bossbar set smc:info name [{"translate":"smc.bossbar.0.start","fallback":"即将开始 | 游戏将在 %s 秒后开始","color":"aqua","with":[{"score":{"objective":"countdown","name":"$0_start"},"color":"blue"}]}]
execute if score $prepare data matches 2.. store result bossbar smc:info value run scoreboard players get $0_start countdown
execute if score $prepare data matches 2.. run bossbar set smc:info max 10

# 锁定游戏
execute if score $gamelock data matches 1 run bossbar set smc:info color white
execute if score $gamelock data matches 1 run bossbar set smc:info name [{"translate":"smc.bossbar.0.lock","fallback":"游戏已锁定 | 请等待管理员解锁","color":"white"}]
execute if score $gamelock data matches 1 run bossbar set smc:info value 1000

# 显示给玩家
bossbar set smc:info players @a