#> ashen_lib:array/mask
#
# 対象配列の要素iについてマスク配列の要素iが**trueである場合**はMaskElementに置換した配列を返します。
#
# Array, Masksの要素の数は同一である必要があります。
#
# @input
#   T extends any
#   storage ashen_lib:api Array: [T] @ N
#   対象配列
#   storage ashen_lib:api Masks: [boolean | { _: { _: boolean } }] @ N
#   マスク配列
#   storage ashen_lib:api MaskElement: T | null
#   マスク後の要素 / 未指定の場合、マスクされた要素は削除されます。
# @output
#   storage ashen_lib:api Array: [T] @ ..N
# @api

# セッションチェック
    execute if data storage ashen_lib:api {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"ashen_lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 移行する
    data modify storage ashen_lib:api CopiedArray set from storage ashen_lib:api Array
    data modify storage ashen_lib:api Array set value []

# 再帰的に動かす
    execute if data storage ashen_lib:api CopiedArray[0] if data storage ashen_lib:api Masks[0] run function ashen_lib:array/core/mask

# 結果を反転
    function ashen_lib:array/reverse

# リセット
    data remove storage ashen_lib:api Mask
    data remove storage ashen_lib:api Masks
    data remove storage ashen_lib:api MaskElement
    data remove storage ashen_lib:api CopiedArray