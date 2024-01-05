#> ashen_lib:array/merge
#
# 配列の各要素同士を結合します。
#
# ArrayA, ArrayBの要素の数は同一である必要があります。
#
# @input
#   T extends object
#   storage ashen_lib:api ArrayA: [T] @ N
#   配列A
#   storage ashen_lib:api ArrayB: [T] @ N
#   配列B
# @output
#   storage ashen_lib:api MergeResult: [T] @ N
# @api

# セッションチェック
    execute if data storage ashen_lib:api {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"ashen_lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 初期化
    data remove storage ashen_lib:api Array

# 再帰的に動かす
    execute if data storage ashen_lib:api ArrayA[0] if data storage ashen_lib:api ArrayB[0] run function ashen_lib:array/core/merge

# 結果を反転
    function ashen_lib:array/reverse
    data modify storage ashen_lib:api MergeResult set from storage ashen_lib:api Array

# リセット
    data remove storage ashen_lib:api Array