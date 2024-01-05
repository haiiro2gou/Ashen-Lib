#> ashen_lib:array/core/compare_single
# @within function
#   ashen_lib:array/**compare_single

# 比較/結果代入
    data modify storage ashen_lib:api Array append value {_:{_:-1b}}
    execute store success score #Temp Ashen.Global.Temporary run data modify storage ashen_lib:api CopiedArray[-1] set from storage ashen_lib:api CompareTarget
    execute store success storage ashen_lib:api Array[-1]._._ byte 1 if score #Temp Ashen.Global.Temporary matches 0
# 末尾削除
    data remove storage ashen_lib:api CopiedArray[-1]
# 要素がまだあるなら再帰
    execute if data storage ashen_lib:api CopiedArray[0] run function ashen_lib:array/core/compare_single