#> ashen_lib:version/check/core/
# @within function ashen_lib:version/check/

#> private
# @private
    #declare score_holder #TargetLength
    #declare score_holder #CompLength

# Flag
    scoreboard players set #CheckVersion Ashen.Global.Temporary 1

# Get Version Tags
    data modify storage ashen_lib:api Argument.Version set from storage ashen_lib:api Argument.TargetVersion
    function ashen_lib:version/parse/
    data modify storage ashen_lib:temp version.target set from storage ashen_lib:api Return

    data modify storage ashen_lib:api Argument.Version set from storage ashen_lib:api Argument.TargetVersion
    function ashen_lib:version/parse/
    data modify storage ashen_lib:temp version.min set from storage ashen_lib:api Return

    execute if data storage ashen_lib:api Argument.MaxVersion run data modify storage ashen_lib:api Argument.Version set from storage ashen_lib:api Argument.TargetVersion
    execute if data storage ashen_lib:api Argument.MaxVersion run function ashen_lib:version/parse/
    execute if data storage ashen_lib:api Argument.MaxVersion run data modify storage ashen_lib:temp version.max set from storage ashen_lib:api Return

# Validate Version
    execute store result score #TargetLength Ashen.Global.Temporary if data storage ashen_lib:temp version.target[]
    execute store result score #CompLength Ashen.Global.Temporary if data storage ashen_lib:temp version.min[]
    execute unless score #TargetLength Ashen.Global.Temporary = #CompLength Ashen.Global.Temporary run return 1
    execute if data storage ashen_lib:temp Argument.MaxVersion store result score #CompLength Ashen.Global.Temporary if data storage ashen_lib:temp version.max[]
    execute if data storage ashen_lib:temp Argument.MaxVersion unless score #TargetLength Ashen.Global.Temporary = #CompLength Ashen.Global.Temporary run return 1

# Check Version
    execute if score #CheckVersion Ashen.Global.Temporary matches 1 run function ashen_lib:version/check/core/recursive/min
    execute if score #CheckVersion Ashen.Global.Temporary matches 1 if data storage ashen_lib:api Argument.MaxVersion run function ashen_lib:version/check/core/recursive/max

# Output
    execute if score #CheckVersion Ashen.Global.Temporary matches 0 run data modify storage ashen_lib:api Return.Compatible set value false
    execute if score #CheckVersion Ashen.Global.Temporary matches 1 run data modify storage ashen_lib:api Return.Compatible set value true

# Reset
    scoreboard players reset #CheckVersion Ashen.Global.Temporary
    scoreboard players reset #TargetLength Ashen.Global.Temporary
    scoreboard players reset #CompLength Ashen.Global.Temporary
    data remove storage ashen_lib:temp version.target
    data remove storage ashen_lib:temp version.min
    data remove storage ashen_lib:temp version.max
