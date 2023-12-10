#> ashen_lib:string/split/core/512
# @within function
#   ashen_lib:string/split/core/start/512
#   ashen_lib:string/split/core/1024

data modify storage ashen_lib:temp 256 set string storage ashen_lib:temp 512 0 256
function ashen_lib:string/split/core/256
data modify storage ashen_lib:temp 256 set string storage ashen_lib:temp 512 256
function ashen_lib:string/split/core/256
