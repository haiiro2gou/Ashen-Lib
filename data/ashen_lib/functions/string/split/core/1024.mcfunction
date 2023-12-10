#> ashen_lib:string/split/core/1024
# @within function
#   ashen_lib:string/split/core/start/1024

data modify storage ashen_lib:temp 512 set string storage ashen_lib:temp 1024 0 512
function ashen_lib:string/split/core/512
data modify storage ashen_lib:temp 512 set string storage ashen_lib:temp 1024 512
function ashen_lib:string/split/core/512
