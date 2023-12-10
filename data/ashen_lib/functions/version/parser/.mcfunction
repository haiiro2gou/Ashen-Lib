#> ashen_lib:version/parser/
#
# Convert version notation string into numerical array
#
# @input storage
#   ashen_lib:api Argument
#       Version : string
# @output storage
#   ashen_lib:api Argument
#       Return : int[]
# @api

# Validate
    execute unless data storage ashen_lib:api Argument.Version run tellraw @a [{"nbt": "Ashen.Global.Prefix.ERROR", "storage": "global"},{"translate": "Ashen.Api.Error.VersionParser", "fallback": "Missing Argument: Version"}]

# Exec
    execute if data storage ashen_lib:api Argument.Version run function ashen_lib:version/parser/core/

# Reset
    data remove storage ashen_lib:api Argument.Version
