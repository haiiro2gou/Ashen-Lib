#> ashen_lib:string/convert/int/
#
#
#
# @input storage
#   ashen_lib:api Argument
#       String : string
# @output storage
#   ashen_lib:api
#       Return : int
# @api

# Validate
    execute unless data storage ashen_lib:api Argument.String run tellraw @a [{"nbt": "Ashen.Global.Prefix.ERROR", "storage": "global"}, {"translate": "Ashen.Api.Error.String", "fallback": "Missing Argument: String"}]

# Exec
    execute if data storage ashen_lib:api Argument.String run function ashen_lib:string/convert/int/core/

# Reset
    data remove storage ashen_lib:api Argument.String
