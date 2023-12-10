#> ashen_lib:string/split/core/start/256
# @within function
#   ashen_lib:string/split/core/
#   ashen_lib:string/split/core/start/256

data modify storage ashen_lib:temp 256 set string storage ashen_lib:temp all 0 256
function ashen_lib:string/split/core/256
data modify storage ashen_lib:temp all set string storage ashen_lib:temp all 256
scoreboard players remove #Length Ashen.Global.Temporary 256
execute if score #Length Ashen.Global.Temporary matches 256.. run function ashen_lib:string/split/core/start/256
