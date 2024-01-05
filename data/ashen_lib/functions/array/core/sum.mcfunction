#> ashen_lib:array/core/sum
# @within function ashen_lib:array/**sum

# 取得/計算
    execute store result score #Temp Ashen.Global.Temporary run data get storage ashen_lib:api Array[-1]
    scoreboard players operation #Sum Ashen.Global.Temporary += #Temp Ashen.Global.Temporary
# 末尾削除
    data remove storage ashen_lib:api Array[-1]
# 要素がまだあるなら再帰
    execute if data storage ashen_lib:api Array[0] run function ashen_lib:array/core/sum