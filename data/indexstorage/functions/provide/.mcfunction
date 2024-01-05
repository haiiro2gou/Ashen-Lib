#> indexstorage:provide/
# @api

# 未使用idチェック
    execute unless data storage indexstorage:core UnusedID[-1] store result score @s Ashen.IndexStorage.ID run scoreboard players add #StorageIDIndex Ashen.Global.Global 1
    execute unless data storage indexstorage:core UnusedID[-1] run data modify storage indexstorage: data append value {}
    execute if data storage indexstorage:core UnusedID[-1] run function ashen_lib:array/session/open
    execute if data storage indexstorage:core UnusedID[-1] run data modify storage ashen_lib:api Array set from storage indexstorage:core UnusedID
    execute if data storage indexstorage:core UnusedID[-1] run function ashen_lib:array/sort/ascend
    execute if data storage indexstorage:core UnusedID[-1] run data modify storage indexstorage:core UnusedID set from storage ashen_lib:api Array
    execute if data storage indexstorage:core UnusedID[-1] run function ashen_lib:array/session/close
    execute if data storage indexstorage:core UnusedID[-1] store result score @s Ashen.IndexStorage.ID run data get storage indexstorage:core UnusedID[0]
    execute if data storage indexstorage:core UnusedID[-1] run data remove storage indexstorage:core UnusedID[0]

# ストレージ割り当て
    execute store result storage indexstorage:core m.id int 1 run scoreboard players get @s Ashen.IndexStorage.ID
    tag @s add Ashen.IndexStorage.Temp
    summon text_display ~ ~ ~ {UUID:[I;0,0,0,1],text:'{"selector":"@e[tag=Ashen.IndexStorage.Temp,limit=1]"}'}
    data modify storage indexstorage:core m.text set from entity 0-0-0-0-1 text
    function indexstorage:provide/.m with storage indexstorage:core m

    tag @s add Ashen.IndexStorage.HasStorage

# リセット
    kill 0-0-0-0-1
    data remove storage indexstorage:core m
    tag @s remove Ashen.IndexStorage.Temp
