#> ashen_lib:array/core/merge
# @within function ashen_lib:array/**merge


# 結合
    data modify storage ashen_lib:api Array append from storage ashen_lib:api ArrayA[-1]
    data modify storage ashen_lib:api Array[-1] merge from storage ashen_lib:api ArrayB[-1]
# 末尾削除
    data remove storage ashen_lib:api ArrayA[-1]
    data remove storage ashen_lib:api ArrayB[-1]
# 要素の数がずれていないかのチェック
    execute if data storage ashen_lib:api ArrayA[0] unless data storage ashen_lib:api ArrayB[0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"リストの要素の数が異なります。 / from ashen_lib:array/merge","color":"white"}]
    execute unless data storage ashen_lib:api ArrayA[0] if data storage ashen_lib:api ArrayB[0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"リストの要素の数が異なります。 / from ashen_lib:array/merge","color":"white"}]
# 要素がまだあるなら再帰
    execute if data storage ashen_lib:api ArrayA[0] if data storage ashen_lib:api ArrayB[0] run function ashen_lib:array/core/merge