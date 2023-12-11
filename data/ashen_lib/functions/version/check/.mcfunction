#> ashen_lib:version/check/
#
# Check if the version is within the specified range
#
# @input storage
#   ashen_lib:api Argument
#       MinVersion : string
#       MaxVersion : string?
#       TargetVersion : string
# @output storage
#   ashen_lib:api Argument
#       Return : boolean
# @api

# Validate
    execute unless data storage ashen_lib:api Argument.MinVersion run tellraw @a [{"nbt": "Ashen.Global.Prefix.ERROR", "storage": "global"},{"translate": "Ashen.Api.Error.MinVersion", "fallback": "Missing Argument: MinVersion"}]
    execute unless data storage ashen_lib:api Argument.MaxVersion run data modify storage ashen_lib:api Argument.MaxVersion set value "inf"
    execute unless data storage ashen_lib:api Argument.TargetVersion run tellraw @a [{"nbt": "Ashen.Global.Prefix.ERROR", "storage": "global"},{"translate": "Ashen.Api.Error.TargetVersion", "fallback": "Missing Argument: TargetVersion"}]

# Exec
    execute if data storage ashen_lib:api Argument.MinVersion if data storage ashen_lib:api Argument.TargetVersion run function ashen_lib:version/check/core/

# Reset
    data remove storage ashen_lib:api Argument.MinVersion
    data remove storage ashen_lib:api Argument.MaxVersion
    data remove storage ashen_lib:api Argument.TargetVersion
