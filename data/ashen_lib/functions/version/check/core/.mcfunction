#> ashen_lib:version/check/core/
# @within function ashen_lib:version/check/

#> Private
# @private
    #declare score_holder #CheckVersion
    #declare score_holder #TargetMajor
    #declare score_holder #TargetMinor
    #declare score_holder #TargetPatch
    #declare score_holder #CompMajor
    #declare score_holder #CompMinor
    #declare score_holder #CompPatch

# Flag
    scoreboard players set #CheckVersion Ashen.Global.Temporary 1

# Get Target Version
    data modify storage ashen_lib:api Argument.Version set from storage ashen_lib:api Argument.TargetVersion
    function ashen_lib:version/parser/
    execute store result score #TargetMajor Ashen.Global.Temporary run data get storage ashen_lib:api Return[0] 1
    execute store result score #TargetMinor Ashen.Global.Temporary run data get storage ashen_lib:api Return[1] 1
    execute store result score #TargetPatch Ashen.Global.Temporary run data get storage ashen_lib:api Return[2] 1

# Check Version
    data modify storage ashen_lib:api Argument.Version set from storage ashen_lib:api Argument.MinVersion
    execute store result score #CompMajor Ashen.Global.Temporary run data get storage ashen_lib:api Return[0]
    execute store result score #CompMinor Ashen.Global.Temporary run data get storage ashen_lib:api Return[1]
    execute store result score #CompPatch Ashen.Global.Temporary run data get storage ashen_lib:api Return[2]
    execute unless score #CompMajor Ashen.Global.Temporary <= #TargetMajor Ashen.Global.Temporary run scoreboard players set #CheckVersion Ashen.Global.Temporary 0
    execute if score #CompMajor Ashen.Global.Temporary <= #TargetMajor Ashen.Global.Temporary unless score #CompMinor Ashen.Global.Temporary <= #TargetMinor Ashen.Global.Temporary run scoreboard players set #CheckVersion Ashen.Global.Temporary 0
    execute if score #CompMajor Ashen.Global.Temporary <= #TargetMajor Ashen.Global.Temporary if score #CompMinor Ashen.Global.Temporary <= #TargetMinor Ashen.Global.Temporary unless score #CompPatch Ashen.Global.Temporary <= #TargetPatch Ashen.Global.Temporary run scoreboard players set #CheckVersion Ashen.Global.Temporary 0

    execute unless data storage ashen_lib:api Argument{MaxVersion: "inf"} run data modify storage ashen_lib:api Argument.Version set from storage ashen_lib:api Argument.MaxVersion
    execute unless data storage ashen_lib:api Argument{MaxVersion: "inf"} run function ashen_lib:version/parser/
    execute unless data storage ashen_lib:api Argument{MaxVersion: "inf"} store result score #CompMajor Ashen.Global.Temporary run data get storage ashen_lib:api Return[0]
    execute unless data storage ashen_lib:api Argument{MaxVersion: "inf"} store result score #CompMinor Ashen.Global.Temporary run data get storage ashen_lib:api Return[1]
    execute unless data storage ashen_lib:api Argument{MaxVersion: "inf"} store result score #CompPatch Ashen.Global.Temporary run data get storage ashen_lib:api Return[2]
    execute unless data storage ashen_lib:api Argument{MaxVersion: "inf"} unless score #CompMajor Ashen.Global.Temporary >= #TargetMajor Ashen.Global.Temporary run scoreboard players set #CheckVersion Ashen.Global.Temporary 0
    execute unless data storage ashen_lib:api Argument{MaxVersion: "inf"} if score #CompMajor Ashen.Global.Temporary >= #TargetMajor Ashen.Global.Temporary unless score #CompMinor Ashen.Global.Temporary >= #TargetMinor Ashen.Global.Temporary run scoreboard players set #CheckVersion Ashen.Global.Temporary 0
    execute unless data storage ashen_lib:api Argument{MaxVersion: "inf"} if score #CompMajor Ashen.Global.Temporary >= #TargetMajor Ashen.Global.Temporary if score #CompMinor Ashen.Global.Temporary >= #TargetMinor Ashen.Global.Temporary unless score #CompPatch Ashen.Global.Temporary >= #TargetPatch Ashen.Global.Temporary run scoreboard players set #CheckVersion Ashen.Global.Temporary 0

# Output
    execute if score #CheckVersion Ashen.Global.Temporary matches 0 run data modify storage ashen_lib:api Return set value false
    execute if score #CheckVersion Ashen.Global.Temporary matches 1 run data modify storage ashen_lib:api Return set value true

# Reset
    scoreboard players reset #CheckVersion Ashen.Global.Temporary
    scoreboard players reset #TargetMajor Ashen.Global.Temporary
    scoreboard players reset #TargetMinor Ashen.Global.Temporary
    scoreboard players reset #TargetPatch Ashen.Global.Temporary
    scoreboard players reset #CompMajor Ashen.Global.Temporary
    scoreboard players reset #CompMinor Ashen.Global.Temporary
    scoreboard players reset #CompPatch Ashen.Global.Temporary
