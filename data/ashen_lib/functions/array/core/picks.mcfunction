#> ashen_lib:array/core/picks
#
# 配列の要素を再帰的に抜き取る
#
# @within function
#   ashen_lib:array/picks
#   ashen_lib:array/core/picks

# 前の添字と今の添字を取得する
    execute store result score #Index Ashen.Global.Temporary run data get storage ashen_lib:api Picks[-1]
    execute store result score #Cur Ashen.Global.Temporary run data get storage ashen_lib:api Picks[-2]
# 前の添字を削除する
    data remove storage ashen_lib:api Picks[-1]
# 前の添字と今の添字から動かすべき距離を算出する
    scoreboard players operation #Index Ashen.Global.Temporary -= #Cur Ashen.Global.Temporary
    scoreboard players remove #Index Ashen.Global.Temporary 1
# その分だけ動かす
    execute if score #Index Ashen.Global.Temporary matches 1.. run function ashen_lib:array/core/move
# 最後の要素をElementsに移す
    execute if score #Index Ashen.Global.Temporary matches 0.. run data modify storage ashen_lib:api Elements append from storage ashen_lib:api Array[-1]
    execute if score #Index Ashen.Global.Temporary matches 0.. run data remove storage ashen_lib:api Array[-1]
# 添字が二つ以上残ってるなら繰り返す
    execute if data storage ashen_lib:api Picks[-2] run function ashen_lib:array/core/picks