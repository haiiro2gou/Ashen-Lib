#> ashen_lib:array/sum
#
# 配列の要素の総和を計算します。
#
# @input
#   storage ashen_lib:api Array: any[]
#   配列データ
# @output
#   storage ashen_lib:api SumResult: int
#   総和
# @api

# セッションチェック
    execute if data storage ashen_lib:api {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"ashen_lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 初期化
    scoreboard players set #Sum Ashen.Global.Temporary 0
# 総和を計算する
    function ashen_lib:array/core/sum
# 総和をSumResultに突っ込む
    execute store result storage ashen_lib:api SumResult int 1 run scoreboard players get #Sum Ashen.Global.Temporary
# リセット
    scoreboard players reset #Sum Ashen.Global.Temporary
    scoreboard players reset #Temp Ashen.Global.Temporary