#> ashen_lib:string/split/core/start/8
# @within function
#   ashen_lib:string/split/core/
#   ashen_lib:string/split/core/start/8

data modify storage ashen_lib:temp 8 set string storage ashen_lib:temp all 0 8
function ashen_lib:string/split/core/8
data modify storage ashen_lib:temp all set string storage ashen_lib:temp all 8
scoreboard players remove #Length Ashen.Global.Temporary 8
execute if score #Length Ashen.Global.Temporary matches 8.. run function ashen_lib:string/split/core/start/8
