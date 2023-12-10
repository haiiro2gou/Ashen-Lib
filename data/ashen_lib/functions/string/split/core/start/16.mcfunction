#> ashen_lib:string/split/core/start/16
# @within function
#   ashen_lib:string/split/core/
#   ashen_lib:string/split/core/start/16

data modify storage ashen_lib:temp 16 set string storage ashen_lib:temp all 0 16
function ashen_lib:string/split/core/16
data modify storage ashen_lib:temp all set string storage ashen_lib:temp all 16
scoreboard players remove #Length Ashen.Global.Temporary 16
execute if score #Length Ashen.Global.Temporary matches 16.. run function ashen_lib:string/split/core/start/16
