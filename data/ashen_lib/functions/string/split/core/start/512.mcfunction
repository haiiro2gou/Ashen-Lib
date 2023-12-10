#> ashen_lib:string/split/core/start/512
# @within function
#   ashen_lib:string/split/core/
#   ashen_lib:string/split/core/start/512

data modify storage ashen_lib:temp 512 set string storage ashen_lib:temp all 0 512
function ashen_lib:string/split/core/512
data modify storage ashen_lib:temp all set string storage ashen_lib:temp all 512
scoreboard players remove #Length Ashen.Global.Temporary 512
execute if score #Length Ashen.Global.Temporary matches 512.. run function ashen_lib:string/split/core/start/512
