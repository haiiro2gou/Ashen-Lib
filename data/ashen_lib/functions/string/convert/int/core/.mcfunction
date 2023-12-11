#> ashen_lib:string/convert/int/core/
# @within function ashen_lib:string/convert/int/

# Reset result
    data remove storage ashen_lib:api Return

# Get CharArray
    function ashen_lib:string/split/
    data modify storage ashen_lib:temp array set from storage ashen_lib:api Return

# Char to int
    scoreboard players set #CheckConvert Ashen.Global.Temporary 1
    scoreboard players set #Result Ashen.Global.Temporary 0
    function ashen_lib:string/convert/int/core/loop

# Completion
    execute if score #CheckConvert Ashen.Global.Temporary matches 0 run tellraw @a [{"nbt": "Ashen.Global.Prefix.ERROR", "storage": "global"}, {"translate": "Ashen.Error.StringInInt", "fallback": "Contains non-numeric characters"}]
    execute if score #CheckConvert Ashen.Global.Temporary matches 1 store result storage ashen_lib:api Return int 1 run scoreboard players get #Result Ashen.Global.Temporary

# Reset
    scoreboard players reset #CheckConvert Ashen.Global.Temporary
