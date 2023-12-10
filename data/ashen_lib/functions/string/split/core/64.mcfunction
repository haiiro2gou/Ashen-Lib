#> ashen_lib:string/split/core/64
# @within function
#   ashen_lib:string/split/core/start/64
#   ashen_lib:string/split/core/128

data modify storage ashen_lib:temp 32 set string storage ashen_lib:temp 64 0 32
function ashen_lib:string/split/core/32
data modify storage ashen_lib:temp 32 set string storage ashen_lib:temp 64 32
function ashen_lib:string/split/core/32
