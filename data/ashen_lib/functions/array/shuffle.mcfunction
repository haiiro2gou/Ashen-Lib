#> ashen_lib:array/shuffle
#
# 配列の要素をシャッフルします
#
# @input
#   T extends any
#   storage ashen_lib:api Array: [T] @ N
#   配列データ
# @output
#   storage ashen_lib:api Array: [T] @ N
#   ランダムな順の配列
# @api

# セッションチェック
    execute if data storage ashen_lib:api {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"ashen_lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 配列サイズを取得
    execute store result score #ListSize Ashen.Global.Temporary if data storage ashen_lib:api Array[]
# 初期化
    data modify storage ashen_lib:api ArrayO set value []
# 再帰的にシャッフル
    function ashen_lib:array/core/shuffle
# シャッフル後のデータで上書きする
    data modify storage ashen_lib:api Array set from storage ashen_lib:api ArrayO
# リセット
    data remove storage ashen_lib:api ArrayO