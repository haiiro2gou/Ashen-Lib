#> ashen_lib:array/revert
#
# 配列をキャッシュを元に復元します。
#
# @input
#   T extends any
#   storage ashen_lib:api Array: [T] @ N
#   move後の配列
#   storage ashen_lib:api Cache: [T] @ M
#   move時に生成される配列
# @output
#   storage ashen_lib:api Array: [T] @ N + M
#   move前の配列構造
# @api


# セッションチェック
    execute if data storage ashen_lib:api {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"ashen_lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# Cacheを復元
    execute if data storage ashen_lib:api Cache[0] run function ashen_lib:array/core/revert