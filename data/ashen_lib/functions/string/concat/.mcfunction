#> ashen_lib:string/concat/
#
# Combine strings, splitting at specified characters
#
# @input storage ashen_lib:api Argument
#   CharArray : string[]
#   Punctuation : string[]
# @output storage ashen_lib:api
#   Return : string
# @api

# Validate
    execute unless data storage ashen_lib:api Argument.CharArray run tellraw @a [{"nbt": "Ashen.Global.Prefix.ERROR", "storage": "global"}, {"translate": "Ashen.Api.Error.Chars", "fallback": "Missing Argument: CharArray"}]
    execute unless data storage ashen_lib:api Argument.Punctuation run data modify storage ashen_lib:api Argument.Punctuation set value [""]

# Exec
    execute if data storage ashen_lib:api Argument.CharArray run data remove storage ashen_lib:api Return
    execute if data storage ashen_lib:api Argument.CharArray run function ashen_lib:string/concat/core/

# Reset
    data remove storage ashen_lib:api Argument.CharArray
    data remove storage ashen_lib:api Argument.Punctuation
