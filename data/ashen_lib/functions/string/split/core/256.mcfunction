#> ashen_lib:string/split/core/256
# @within function
#   ashen_lib:string/split/core/start/256
#   ashen_lib:string/split/core/512

data modify storage ashen_lib:temp 128 set string storage ashen_lib:temp all 0 128
function ashen_lib:string/split/core/128
data modify storage ashen_lib:temp 128 set string storage ashen_lib:temp all 128
function ashen_lib:string/split/core/128
