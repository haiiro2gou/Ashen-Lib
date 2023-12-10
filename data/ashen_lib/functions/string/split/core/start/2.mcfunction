#> ashen_lib:string/split/core/start/2
# @within function
#   ashen_lib:string/split/core/
#   ashen_lib:string/split/core/start/2

data modify storage ashen_lib:temp 2 set string storage ashen_lib:temp all 0 2
function ashen_lib:string/split/core/2
data modify storage ashen_lib:temp all set string storage ashen_lib:temp all 2
scoreboard players remove #Length Ashen.Global.Temporary 2
execute if score #Length Ashen.Global.Temporary matches 2.. run function ashen_lib:string/split/core/start/2
