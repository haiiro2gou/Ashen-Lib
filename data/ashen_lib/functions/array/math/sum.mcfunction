#> ashen_lib:array/math/sum
#
# 配列の要素の総和を計算します。
#
# 配列の値の型がNumeric型ではない場合は、`data get`で取得されるint値を値として扱います。
# 例えば、`List[String]`をArrayに渡した場合、各文字列の長さの総和を返します。
#
# @input
#   T extends any
#   storage ashen_lib:api Array: [T]
#   配列データ
# @output
#   storage ashen_lib:api SumResult: T extends Numeric ? double : int
#   総和
# @api

# セッションチェック
    execute if data storage ashen_lib:api {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"ashen_lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 初期化
    scoreboard players set #Sum Ashen.Global.Temporary 0
# 総和を計算する
    function ashen_lib:array/core/math/sum
# 総和をSumResultに突っ込む
    execute if score #isNumeric Ashen.Global.Temporary matches 0 store result storage ashen_lib:api SumResult int 1.00 run scoreboard players get #Sum Ashen.Global.Temporary
    execute if score #isNumeric Ashen.Global.Temporary matches 1 store result storage ashen_lib:api SumResult double 0.01 run scoreboard players get #Sum Ashen.Global.Temporary
# リセット
    scoreboard players reset #Sum Ashen.Global.Temporary
    scoreboard players reset #Temp Ashen.Global.Temporary
    scoreboard players reset #isNumeric Ashen.Global.Temporary