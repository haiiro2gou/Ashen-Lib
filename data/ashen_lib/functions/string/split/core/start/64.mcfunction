#> ashen_lib:string/split/core/start/64
# @within function
#   ashen_lib:string/split/core/
#   ashen_lib:string/split/core/start/64

data modify storage ashen_lib:temp 64 set string storage ashen_lib:temp all 0 64
function ashen_lib:string/split/core/64
data modify storage ashen_lib:temp all set string storage ashen_lib:temp all 64
scoreboard players remove #Length Ashen.Global.Temporary 64
execute if score #Length Ashen.Global.Temporary matches 64.. run function ashen_lib:string/split/core/start/64
