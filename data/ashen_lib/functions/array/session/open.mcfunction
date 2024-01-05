#> ashen_lib:array/session/open
#
#
#
# @api

# セッションチェック
    execute if data storage ashen_lib:api {ArrayLibSessionOpened:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"ashen_lib:array/のセッションが正常に閉じられていません。","color":"white"}]
# 初期化
    data modify storage ashen_lib:api Array set value []
    data modify storage ashen_lib:api ArrayA set value []
    data modify storage ashen_lib:api ArrayB set value []
    data modify storage ashen_lib:api Cache set value []
    data modify storage ashen_lib:api Elements set value []
    data modify storage ashen_lib:api Package set value []
    data modify storage ashen_lib:api CompareResult set value []
    data modify storage ashen_lib:api SumResult set value 0
    data modify storage ashen_lib:api MergeResult set value []
    data modify storage ashen_lib:api Mul set value 1
    data modify storage ashen_lib:api AddResult set value []
    data modify storage ashen_lib:api MulResult set value []
    data modify storage ashen_lib:api SubResult set value []
    data modify storage ashen_lib:api SqrResult set value []
# セッションフラグを立てる
    data modify storage ashen_lib:api ArrayLibSessionOpened set value true