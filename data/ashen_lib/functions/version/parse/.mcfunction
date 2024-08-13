#> ashen_lib:version/parse/
#
# Convert version notation string into numerical array
#
# @input storage
#   ashen_lib:api Argument
#       VersionTag : string
# @output storage
#   ashen_lib:api Return
#       Version : int[]
# @api

# Validate
    execute unless data storage ashen_lib:api Argument.VersionTag run tellraw @a [{"nbt": "Ashen.Global.Prefix.ERROR", "storage": "global"},{"translate": "Ashen.Api.Error.Version", "fallback": "Missing Argument: Version"}]

# Exec
    execute if data storage ashen_lib:api Argument.VersionTag run function ashen_lib:version/parse/core/

# Reset
    data remove storage ashen_lib:api Argument.VersionTag
