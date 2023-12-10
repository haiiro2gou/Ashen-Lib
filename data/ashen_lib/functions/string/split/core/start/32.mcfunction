#> ashen_lib:string/split/core/start/32
# @within function
#   ashen_lib:string/split/core/
#   ashen_lib:string/split/core/start/32

data modify storage ashen_lib:temp 32 set string storage ashen_lib:temp all 0 32
function ashen_lib:string/split/core/32
data modify storage ashen_lib:temp all set string storage ashen_lib:temp all 32
scoreboard players remove #Length Ashen.Global.Temporary 32
execute if score #Length Ashen.Global.Temporary matches 32.. run function ashen_lib:string/split/core/start/32
