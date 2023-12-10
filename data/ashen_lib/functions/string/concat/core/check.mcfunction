#> ashen_lib:string/concat/core/check
# @within function
#   ashen_lib:string/concat/core/
#   ashen_lib:string/concat/core/check

#> Private
# @private
    #declare score_holder #Different

# Check
    execute store success score #Different Ashen.Global.Temporary run data modify storage ashen_lib:temp punc[0] set from storage ashen_lib:api Argument.CharArray[0]
    execute if score #Different Ashen.Global.Temporary matches 0 run scoreboard players set #IsPunc Ashen.Global.Temporary 1

# Reset
    scoreboard players reset #Different Ashen.Global.Temporary

# Loop
    data remove storage ashen_lib:temp punc[0]
    execute if data storage ashen_lib:temp punc[0] run function ashen_lib:string/concat/core/check
