#> ashen_lib:array/math/add
#
# 2つの配列の各要素について、値を加算した結果を返します。
#
# ArrayA, ArrayBの要素の数は同一である必要があります。
#
# @input
#   T extends any
#   storage ashen_lib:api ArrayA: [Numeric] @ N
#   加算元配列
#   storage ashen_lib:api ArrayB: [Numeric] @ N
#   加算元配列
# @output
#   storage ashen_lib:api AddResult: [double] @ N
# @api

# セッションチェック
    execute if data storage ashen_lib:api {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"ashen_lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 初期化
    data remove storage ashen_lib:api Array

# 再帰的に動かす
    execute if data storage ashen_lib:api ArrayA[0] if data storage ashen_lib:api ArrayB[0] run function ashen_lib:array/core/math/add

# 結果を反転
    function ashen_lib:array/reverse
    data modify storage ashen_lib:api AddResult set from storage ashen_lib:api Array

# リセット
    data remove storage ashen_lib:api Array
    scoreboard players reset #Temp Ashen.Global.Temporary
    scoreboard players reset #Temp2 Ashen.Global.Temporary