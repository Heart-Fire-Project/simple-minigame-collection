# 调起阶段对应函数
execute if score $state data matches 0 run function main:state/0/tick20

# 循环执行
schedule function main:tick/tick20 20t