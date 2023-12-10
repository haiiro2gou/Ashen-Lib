#> ashen_lib:string/concat/core/
# @within function
#   ashen_lib:string/concat/
#   ashen_lib:string/concat/core/

# Validate
    execute unless data storage ashen_lib:api Return run data modify storage ashen_lib:api Return append value ""

# Get Variable
    data modify storage ashen_lib:temp Left set from storage ashen_lib:api Return[-1]
    data modify storage ashen_lib:temp Right set from storage ashen_lib:api Argument.CharArray[0]

# Check
    scoreboard players set #IsPunc Ashen.Global.Temporary 0
    data modify storage ashen_lib:temp punc set from storage ashen_lib:api Argument.Punctuation
    execute if data storage ashen_lib:temp punc[0] run function ashen_lib:string/concat/core/check

# Exec
    execute if score #IsPunc Ashen.Global.Temporary matches 1 unless data storage ashen_lib:temp {Left: ""} run data modify storage ashen_lib:api Return append value ""
    execute if score #IsPunc Ashen.Global.Temporary matches 0 run function ashen_lib:string/concat/core/concat with storage ashen_lib:temp

# Reset
    scoreboard players reset #IsPunc Ashen.Global.Temporary
    data remove storage ashen_lib:temp Left
    data remove storage ashen_lib:temp Right

# Loop
    data remove storage ashen_lib:api Argument.CharArray[0]
    execute if data storage ashen_lib:api Argument.CharArray[0] run function ashen_lib:string/concat/core/
