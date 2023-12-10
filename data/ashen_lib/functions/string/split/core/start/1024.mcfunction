#> ashen_lib:string/split/core/start/1024
# @within function
#   ashen_lib:string/split/core/
#   ashen_lib:string/split/core/start/1024

data modify storage ashen_lib:temp 1024 set string storage ashen_lib:temp all 0 1024
function ashen_lib:string/split/core/1024
data modify storage ashen_lib:temp all set string storage ashen_lib:temp all 1024
scoreboard players remove #Length Ashen.Global.Temporary 1024
execute if score #Length Ashen.Global.Temporary matches 1024.. run function ashen_lib:string/split/core/start/1024
