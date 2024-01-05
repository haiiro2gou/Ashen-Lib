#> ashen_lib:array/core/mask_inverted
# @within function ashen_lib:array/**mask_inverted

# マスクデータの一般化
    data modify storage ashen_lib:api Mask set from storage ashen_lib:api Masks[-1]
    execute if data storage ashen_lib:api Mask{} run data modify storage ashen_lib:api Mask set from storage ashen_lib:api Mask._._
# マスクデータに合わせて値を追加する
    execute if data storage ashen_lib:api {Mask:false} run data modify storage ashen_lib:api Array append from storage ashen_lib:api MaskElement
    execute if data storage ashen_lib:api {Mask: true} run data modify storage ashen_lib:api Array append from storage ashen_lib:api CopiedArray[-1]
# 末尾削除
    data remove storage ashen_lib:api CopiedArray[-1]
    data remove storage ashen_lib:api Masks[-1]
# 要素の数がずれていないかのチェック
    execute if data storage ashen_lib:api CopiedArray[0] unless data storage ashen_lib:api Masks[0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"リストの要素の数が異なります。 / from ashen_lib:array/mask","color":"white"}]
    execute unless data storage ashen_lib:api CopiedArray[0] if data storage ashen_lib:api Masks[0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"リストの要素の数が異なります。 / from ashen_lib:array/mask","color":"white"}]
# 要素がまだあるなら再帰
    execute if data storage ashen_lib:api CopiedArray[0] if data storage ashen_lib:api Masks[0] run function ashen_lib:array/core/mask_inverted