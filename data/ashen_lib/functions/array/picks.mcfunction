#> ashen_lib:array/picks
#
# 指定された配列の要素を抜き出します。
#
# @input storage ashen_lib:api
#   T extends any
#   Array: [T] @ N
#   配列データ
#   Picks: [int] @ M
#   抜き取る要素の添字の配列
# @output storage lib:
#   Array: [T] @ (N - M)..
#   要素が抜き取られた配列
#   Elements: [T] @ ..M
#   抜き取られた要素
# @api

# セッションチェック
    execute if data storage ashen_lib:api {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"ashen_lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 初期化
    data remove storage ashen_lib:api Elements
# 添字配列をソートする
    # 配列を入れ替える
        data modify storage ashen_lib:api ArrayTemp set from storage ashen_lib:api Array
        data modify storage ashen_lib:api Array set from storage ashen_lib:api Picks
    # ソート
        function ashen_lib:array/sort_ascend
    # 配列を元に戻す
        data modify storage ashen_lib:api Picks set from storage ashen_lib:api Array
        data modify storage ashen_lib:api Array set from storage ashen_lib:api ArrayTemp
# 事前処理としてPicks配列に配列のサイズと同じ添字を突っ込む // どうせ内部処理で-1されるので配列サイズと同じで良い
    data modify storage ashen_lib:api Picks append value -1
    execute store result storage ashen_lib:api Picks[-1] int 1 if data storage ashen_lib:api Array[]
# 再帰的に抜き取る
    function ashen_lib:array/core/picks
# Cacheを戻す
    function ashen_lib:array/revert
# Elementsの順番を反転させる
    # 配列を入れ替える
        data modify storage ashen_lib:api ArrayTemp set from storage ashen_lib:api Array
        data modify storage ashen_lib:api Array set from storage ashen_lib:api Elements
    # 反転させる
        function ashen_lib:array/reverse
    # 配列を元に戻す
        data modify storage ashen_lib:api Elements set from storage ashen_lib:api Array
        data modify storage ashen_lib:api Array set from storage ashen_lib:api ArrayTemp
# リセット
    data remove storage ashen_lib:api Picks
    data remove storage ashen_lib:api ArrayTemp
    scoreboard players reset #Prev Ashen.Global.Temporary
    scoreboard players reset #Cur Ashen.Global.Temporary
    scoreboard players reset #ListSize Ashen.Global.Temporary