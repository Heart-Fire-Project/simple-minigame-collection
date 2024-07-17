# 规则设定
setworldspawn 0 0 0
forceload remove all
time set day
weather clear
difficulty normal
gamerule playersNetherPortalCreativeDelay 1010000
gamerule playersNetherPortalDefaultDelay 1010000
gamerule playersSleepingPercentage 101
gamerule spawnRadius 0
gamerule randomTickSpeed 0
gamerule announceAdvancements true
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doVinesSpread false
gamerule doImmediateRespawn true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule drowningDamage false
gamerule doTileDrops false
gamerule doWeatherCycle false
gamerule fallDamage false
gamerule fireDamage false
gamerule freezeDamage false
gamerule keepInventory true
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule projectilesCanBreakBlocks false
gamerule reducedDebugInfo true
gamerule sendCommandFeedback false
gamerule showDeathMessages false

# 初始化计分板
scoreboard objectives remove temp
scoreboard objectives add temp dummy "临时数据"
scoreboard objectives add data dummy "游戏数据"

# 初始化队伍
team add ready "已准备"
team modify ready color green
team modify ready friendlyFire false
team add unready "未准备"
team modify unready color gray
team modify unready friendlyFire false
team add player "游戏中"
team modify player friendlyFire false

# 初始化定时任务
schedule function main:tick/tick1 1t
schedule function main:tick/tick2 2t
schedule function main:tick/tick20 20t

# 进入第 0 阶段: 大厅
function main:state/0/enter