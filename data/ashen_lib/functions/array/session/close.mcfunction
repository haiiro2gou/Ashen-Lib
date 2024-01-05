#> ashen_lib:array/session/close
#
#
#
# @api

# セッションチェック
    execute if data storage ashen_lib:api {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"ashen_lib:array/のセッションは既に閉じられています。","color":"white"}]
# リセット
    data remove storage ashen_lib:api Cache
    data remove storage ashen_lib:api Array
    data remove storage ashen_lib:api ArrayA
    data remove storage ashen_lib:api ArrayB
    data remove storage ashen_lib:api Elements
    data remove storage ashen_lib:api Package
    data remove storage ashen_lib:api CompareResult
    data remove storage ashen_lib:api SumResult
    data remove storage ashen_lib:api MergeResult
    data remove storage ashen_lib:api Mul
    data remove storage ashen_lib:api AddResult
    data remove storage ashen_lib:api MulResult
    data remove storage ashen_lib:api SubResult
    data remove storage ashen_lib:api SqrResult
# セッションフラグを消す
    data modify storage ashen_lib:api ArrayLibSessionOpened set value false