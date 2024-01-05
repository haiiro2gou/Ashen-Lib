#> ashen_lib:array/math/scalar_multiply
#
# 配列の各要素を、Mulで乗算した結果を返します。
#
# @input
#   storage ashen_lib:api Array: [any] @ N
#   配列データ
#   storage ashen_lib:api Mul: double
#   係数
# @output
#   storage ashen_lib:api MulResult: [double] @ N
# @api

# セッションチェック
    execute if data storage ashen_lib:api {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"ashen_lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# Mulを取得する
    execute store result score #Mul Ashen.Global.Temporary run data get storage ashen_lib:api Mul 100

# 移行する
    data modify storage ashen_lib:api CopiedArray set from storage ashen_lib:api Array
    data remove storage ashen_lib:api Array

# 再帰的に動かす
    execute if data storage ashen_lib:api CopiedArray[0] run function ashen_lib:array/core/math/scalar_multiply

# 結果を反転
    function ashen_lib:array/reverse
    data modify storage ashen_lib:api MulResult set from storage ashen_lib:api Array

# リセット
    data remove storage ashen_lib:api Array
    data remove storage ashen_lib:api CopiedArray
    data remove storage ashen_lib:api Mul
    scoreboard players reset #Mul Ashen.Global.Temporary
    scoreboard players reset #Temp Ashen.Global.Temporary