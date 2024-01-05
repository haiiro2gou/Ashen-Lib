#> ashen_lib:array/core/math/add
# @within function
#   ashen_lib:array/math/add
#   ashen_lib:array/core/math/add

# 加算
    data modify storage ashen_lib:api Array append value -1d
    execute store result score #Temp Ashen.Global.Temporary run data get storage ashen_lib:api ArrayA[-1] 1000
    execute store result score #Temp2 Ashen.Global.Temporary run data get storage ashen_lib:api ArrayB[-1] 1000
    scoreboard players operation #Temp Ashen.Global.Temporary += #Temp2 Ashen.Global.Temporary
    execute store result storage ashen_lib:api Array[-1] double 0.001 run scoreboard players get #Temp Ashen.Global.Temporary
# 末尾削除
    data remove storage ashen_lib:api ArrayA[-1]
    data remove storage ashen_lib:api ArrayB[-1]
# 要素の数がずれていないかのチェック
    execute if data storage ashen_lib:api ArrayA[0] unless data storage ashen_lib:api ArrayB[0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"リストの要素の数が異なります。 / from ashen_lib:array/math/add","color":"white"}]
    execute unless data storage ashen_lib:api ArrayA[0] if data storage ashen_lib:api ArrayB[0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"リストの要素の数が異なります。 / from ashen_lib:array/math/add","color":"white"}]
# 要素がまだあるなら再帰
    execute if data storage ashen_lib:api ArrayA[0] if data storage ashen_lib:api ArrayB[0] run function ashen_lib:array/core/math/add