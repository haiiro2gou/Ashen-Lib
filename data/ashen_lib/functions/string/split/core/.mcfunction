#> ashen_lib:string/split/core/
# @within function ashen_lib:string/split/

# Move to Temporary Storage
    data modify storage ashen_lib:temp all set from storage ashen_lib:api Argument.String

# Get Length
    execute store result score #Length Ashen.Global.Temporary run data get storage ashen_lib:temp all

# Division into 2 parts
    execute if score #Length Ashen.Global.Temporary matches 1024.. run function ashen_lib:string/split/core/start/1024
    execute if score #Length Ashen.Global.Temporary matches 512.. run function ashen_lib:string/split/core/start/512
    execute if score #Length Ashen.Global.Temporary matches 256.. run function ashen_lib:string/split/core/start/256
    execute if score #Length Ashen.Global.Temporary matches 128.. run function ashen_lib:string/split/core/start/128
    execute if score #Length Ashen.Global.Temporary matches 64.. run function ashen_lib:string/split/core/start/64
    execute if score #Length Ashen.Global.Temporary matches 32.. run function ashen_lib:string/split/core/start/32
    execute if score #Length Ashen.Global.Temporary matches 16.. run function ashen_lib:string/split/core/start/16
    execute if score #Length Ashen.Global.Temporary matches 8.. run function ashen_lib:string/split/core/start/8
    execute if score #Length Ashen.Global.Temporary matches 4.. run function ashen_lib:string/split/core/start/4
    execute if score #Length Ashen.Global.Temporary matches 2.. run function ashen_lib:string/split/core/start/2
    execute if score #Length Ashen.Global.Temporary matches 1.. run function ashen_lib:string/split/core/start/1

# Reset
    scoreboard players reset #Length Ashen.Global.Temporary
