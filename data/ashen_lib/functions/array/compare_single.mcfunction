#> ashen_lib:array/compare_single
#
# 配列の各要素について比較対象と同一であるかを比較し、その結果の配列を返します。
#
# @input
#   T extends any
#   storage ashen_lib:api Array: [T] @ N
#   比較配列A
#   storage ashen_lib:api CompareTarget: T
#   比較配列B
# @output
#   storage ashen_lib:api CompareResult: [{ _: { _: boolean } }] @ N
# @api

# セッションチェック
    execute if data storage ashen_lib:api {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"ashen_lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 移行する
    data modify storage ashen_lib:api CopiedArray set from storage ashen_lib:api Array
    data remove storage ashen_lib:api Array

# 再帰的に動かす
    execute if data storage ashen_lib:api CopiedArray[0] run function ashen_lib:array/core/compare_single

# 結果を反転
    function ashen_lib:array/reverse
    data modify storage ashen_lib:api CompareResult set from storage ashen_lib:api Array

# リセット
    data remove storage ashen_lib:api Array
    data remove storage ashen_lib:api CopiedArray
    data remove storage ashen_lib:api CompareTarget
    scoreboard players reset #Temp Ashen.Global.Temporary