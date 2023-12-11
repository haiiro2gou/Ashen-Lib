#> ashen_lib:string/convert/int/core/loop
# @within function
#   ashen_lib:string/convert/int/core/
#   ashen_lib:string/convert/int/core/loop

# Get
    data modify storage ashen_lib:temp candidate set from storage ashen_lib:temp array[0]
    data remove storage ashen_lib:temp array[0]

# Operation
    scoreboard players operation #Result Ashen.Global.Temporary *= #10 Ashen.Global.Const
    # execute if data storage ashen_lib:temp {candidate: "0"}
    execute if data storage ashen_lib:temp {candidate: "1"} run scoreboard players add #Result Ashen.Global.Temporary 1
    execute if data storage ashen_lib:temp {candidate: "2"} run scoreboard players add #Result Ashen.Global.Temporary 2
    execute if data storage ashen_lib:temp {candidate: "3"} run scoreboard players add #Result Ashen.Global.Temporary 3
    execute if data storage ashen_lib:temp {candidate: "4"} run scoreboard players add #Result Ashen.Global.Temporary 4
    execute if data storage ashen_lib:temp {candidate: "5"} run scoreboard players add #Result Ashen.Global.Temporary 5
    execute if data storage ashen_lib:temp {candidate: "6"} run scoreboard players add #Result Ashen.Global.Temporary 6
    execute if data storage ashen_lib:temp {candidate: "7"} run scoreboard players add #Result Ashen.Global.Temporary 7
    execute if data storage ashen_lib:temp {candidate: "8"} run scoreboard players add #Result Ashen.Global.Temporary 8
    execute if data storage ashen_lib:temp {candidate: "9"} run scoreboard players add #Result Ashen.Global.Temporary 9
    execute unless data storage ashen_lib:temp {candidate: "0"} unless data storage ashen_lib:temp {candidate: "1"} unless data storage ashen_lib:temp {candidate: "2"} unless data storage ashen_lib:temp {candidate: "3"} unless data storage ashen_lib:temp {candidate: "4"} unless data storage ashen_lib:temp {candidate: "5"} unless data storage ashen_lib:temp {candidate: "6"} unless data storage ashen_lib:temp {candidate: "7"} unless data storage ashen_lib:temp {candidate: "8"} unless data storage ashen_lib:temp {candidate: "9"} run scoreboard players set #CheckConvert Ashen.Global.Temporary 0

# Loop
    data remove storage ashen_lib:temp array[0]
    execute if data storage ashen_lib:temp array[0] run function ashen_lib:string/convert/int/core/loop
