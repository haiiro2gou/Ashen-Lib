#> indexstorage:rejoin/merge_score.m
#
# プレイヤーのrejoin処理
#
# @input args
#   Name : string
# @within function indexstorage:rejoin/

# スコアを移行
    $scoreboard players operation @s Ashen.IndexStorage.ID = $(Name) Ashen.IndexStorage.ID
    $scoreboard players reset $(Name) Ashen.IndexStorage.ID
