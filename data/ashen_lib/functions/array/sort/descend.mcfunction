#> ashen_lib:array/sort/descend
#
# 配列の要素を降順ソートします。
#
# @input
#   storage ashen_lib:api Array: [int] @ N
#   配列データ
# @output
#   storage ashen_lib:api Array: [int] @ N
#   降順にソートされた配列データ
# @public


# セッションチェック
    execute if data storage ashen_lib:api {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"ashen_lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# ソートを実行
    function ashen_lib:array/core/sort/
    execute unless data storage ashen_lib:temp Array.Desc[-1] run function ashen_lib:array/core/sort/descend/
    data modify storage ashen_lib:api Array set from storage ashen_lib:temp Array.Desc[-1]
# リセット
    scoreboard players reset #Value1 Ashen.Global.Temporary
    scoreboard players reset #Value2 Ashen.Global.Temporary
    data remove storage ashen_lib:temp Array
