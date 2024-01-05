#> ashen_lib:array/move
#
# 配列をキャッシュへ移動します。
#
# @input storage ashen_lib:api
#   T extends any
#   Array: [T] @ N
#   操作する配列データ
#   Argument.Index: int
#   目的の要素のindex
# @output storage lib:
#   Array: [T] @ (N - Index)
#   最後の要素が目的の要素になった配列
#   Cache: [T] @ Index
#   移動されたデータ
# @api

# セッションチェック
    execute if data storage ashen_lib:api {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"ashen_lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 動かす回数を算出する
    execute store result score #Index Ashen.Global.Temporary if data storage ashen_lib:api Array[]
    scoreboard players remove #Index Ashen.Global.Temporary 1
    execute store result score #Argument.Index Ashen.Global.Temporary run data get storage ashen_lib:api Argument.Index
    scoreboard players operation #Index Ashen.Global.Temporary -= #Argument.Index Ashen.Global.Temporary
# 再帰的に動かす
    execute if score #Index Ashen.Global.Temporary matches 1.. run function ashen_lib:array/core/move

# リセット
    data remove storage ashen_lib:api Argument.Index
    scoreboard players reset #Argument.Index Ashen.Global.Temporary
    scoreboard players reset #Index Ashen.Global.Temporary