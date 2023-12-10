#> ashen_lib:string/split/
#
# Break down the string into single characters
#
# @input storage
#   ashen_lib:api Argument
#       String : string
# @output storage ashen_lib:api
#       Return : string[]
# @api

# Validate
    execute unless data storage ashen_lib:api Argument.String run tellraw @a [{"nbt": "Ashen.Global.Prefix.ERROR", "storage": "global"}, {"translate": "Ashen.Api.Error.String", "fallback": "Missing Argument: String"}]

# Exec
    execute if data storage ashen_lib:api Argument.String run data remove storage ashen_lib:api Return
    execute if data storage ashen_lib:api Argument.String run function ashen_lib:string/split/core/

# Reset
    data remove storage ashen_lib:api Argument.String
