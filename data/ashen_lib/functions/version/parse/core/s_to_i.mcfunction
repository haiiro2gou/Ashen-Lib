#> ashen_lib:version/parse/core/s_to_i
# @within function
#   ashen_lib:version/parse/core/
#   ashen_lib:version/parse/core/s_to_i

data modify storage ashen_lib:api Argument.String set from storage ashen_lib:temp version.str[0]
data remove storage ashen_lib:temp version.str[0]
function ashen_lib:string/convert/int/
data modify storage ashen_lib:temp version.int append from storage ashen_lib:api Return

execute if data storage ashen_lib:temp version.str[0] run function ashen_lib:version/parse/core/s_to_i
