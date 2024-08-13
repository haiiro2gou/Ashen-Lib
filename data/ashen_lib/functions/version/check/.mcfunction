#> ashen_lib:version/check/
#
# Check if the version is within the specified range
#
# @input storage
#   ashen_lib:api Argument
#       TargetVersion : string
#       MinVersion : string
#       MaxVersion : string?
# @output storage
#   ashen_lib:api Return
#       Compatible : boolean
# @api

# Validate
    execute unless data storage ashen_lib:api Argument.MinVersion run tellraw @a [{"nbt": "Ashen.Global.Prefix.ERROR", "storage": "global"},{"translate": "Ashen.Api.Error.MinVersion", "fallback": "Missing Argument: MinVersion"}]
    # execute unless data storage ashen_lib:api Argument.MaxVersion run
    execute unless data storage ashen_lib:api Argument.TargetVersion run tellraw @a [{"nbt": "Ashen.Global.Prefix.ERROR", "storage": "global"},{"translate": "Ashen.Api.Error.TargetVersion", "fallback": "Missing Argument: TargetVersion"}]

# Exec
    execute if data storage ashen_lib:api Argument.MinVersion if data storage ashen_lib:api Argument.TargetVersion if function ashen_lib:version/check/core/ run tellraw @a [{"nbt":"Ashen.Global.Prefix.ERROR","storage":"global"},{"translate":"Ashen.Api.Error.Common","fallback":"Error has occurred during api process"}]

# Reset
    data remove storage ashen_lib:api Argument.MinVersion
    data remove storage ashen_lib:api Argument.MaxVersion
    data remove storage ashen_lib:api Argument.TargetVersion
