# 空队伍玩家处理
team join unready @a[team=]

# 刷新物品栏
execute as @a at @s run function main:state/0/refresh/inventory
function main:state/0/refresh/bossbar