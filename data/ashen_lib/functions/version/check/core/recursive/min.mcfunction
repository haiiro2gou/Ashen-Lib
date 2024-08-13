#> ashen_lib:version/check/core/recursive/min
# @within function
#   ashen_lib:version/check/core/
#   ashen_lib:version/check/core/recursive/min

#> private
# @private
    #declare score_holder #Target
    #declare score_holder #Comp

# Check
    execute store result score #Target Ashen.Global.Temporary run data get storage ashen_lib:temp version.target[0]
    execute store result score #Comp Ashen.Global.Temporary run data get storage ashen_lib:temp version.min[0]
    execute if score #Target Ashen.Global.Temporary < #Comp Ashen.Global.Temporary run scoreboard players set #CheckVersion Ashen.Global.Temporary 0

# Loop
    data remove storage ashen_lib:temp version.target[0]
    data remove storage ashen_lib:temp version.min[0]
    execute if score #CheckVersion Ashen.Global.Temporary matches 1 if data storage ashen_lib:temp version.target[0] run function ashen_lib:version/check/core/recursive/min
