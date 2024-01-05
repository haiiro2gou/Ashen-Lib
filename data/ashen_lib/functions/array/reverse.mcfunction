#> ashen_lib:array/reverse
#
# 配列を反転します。
#
# @input
#   T extends any
#   storage ashen_lib:api Array: [T] @ N
#   反転させる配列データ
# @output
#   storage ashen_lib:api Array: [T] @ N
#   反転後の配列データ
# @api


# セッションチェック
    execute if data storage ashen_lib:api {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"ashen_lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 再帰的に反転する
    function ashen_lib:array/core/reverse