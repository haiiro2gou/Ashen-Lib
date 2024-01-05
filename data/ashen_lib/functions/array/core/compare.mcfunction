#> ashen_lib:array/core/compare
# @within function
#   ashen_lib:array/**compare

# 比較/結果代入
    data modify storage ashen_lib:api Array append value {_:{_:-1b}}
    execute store success score #Temp Ashen.Global.Temporary run data modify storage ashen_lib:api ArrayA[-1] set from storage ashen_lib:api ArrayB[-1]
    execute store success storage ashen_lib:api Array[-1]._._ byte 1 if score #Temp Ashen.Global.Temporary matches 0
# 末尾削除
    data remove storage ashen_lib:api ArrayA[-1]
    data remove storage ashen_lib:api ArrayB[-1]
# 要素の数がずれていないかのチェック
    execute if data storage ashen_lib:api ArrayA[0] unless data storage ashen_lib:api ArrayB[0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"リストの要素の数が異なります。 / from ashen_lib:array/compare","color":"white"}]
    execute unless data storage ashen_lib:api ArrayA[0] if data storage ashen_lib:api ArrayB[0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"リストの要素の数が異なります。 / from ashen_lib:array/compare","color":"white"}]
# 要素がまだあるなら再帰
    execute if data storage ashen_lib:api ArrayA[0] if data storage ashen_lib:api ArrayB[0] run function ashen_lib:array/core/compare