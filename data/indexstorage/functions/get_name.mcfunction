#> indexstorage:get_name
#
# プレイヤー名の取得
#
# @input as player
# @output storage indexstorage:core
#   Name: string
# @api

#> private
# @private
    #declare tag IndexStorage.NameStand

summon armor_stand ~ ~ ~ {UUID:[I;3,2,9,8]}
loot replace entity 3-0-2-0-900000008 armor.head loot indexstorage:get_name
data modify storage indexstorage:core Name set from entity 3-0-2-0-900000008 ArmorItems[3].tag.SkullOwner.Name
kill 3-0-2-0-900000008
