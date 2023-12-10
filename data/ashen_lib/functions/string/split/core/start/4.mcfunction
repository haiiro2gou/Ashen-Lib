#> ashen_lib:string/split/core/start/4
# @within function
#   ashen_lib:string/split/core/
#   ashen_lib:string/split/core/start/4

data modify storage ashen_lib:temp 4 set string storage ashen_lib:temp all 0 4
function ashen_lib:string/split/core/4
data modify storage ashen_lib:temp all set string storage ashen_lib:temp all 4
scoreboard players remove #Length Ashen.Global.Temporary 4
execute if score #Length Ashen.Global.Temporary matches 4.. run function ashen_lib:string/split/core/start/4
