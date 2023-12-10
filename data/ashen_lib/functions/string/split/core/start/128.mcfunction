#> ashen_lib:string/split/core/start/128
# @within function
#   ashen_lib:string/split/core/
#   ashen_lib:string/split/core/start/128

data modify storage ashen_lib:temp 128 set string storage ashen_lib:temp all 0 128
function ashen_lib:string/split/core/128
data modify storage ashen_lib:temp all set string storage ashen_lib:temp all 128
scoreboard players remove #Length Ashen.Global.Temporary 128
execute if score #Length Ashen.Global.Temporary matches 128.. run function ashen_lib:string/split/core/start/128
