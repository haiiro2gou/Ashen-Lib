#> indexstorage:rejoin/
#
# プレイヤーのrejoin処理
#
# @within tag/function ashen_lib:handler/rejoin

# プレイヤー名を取得
    function indexstorage:get_name
# プレイヤー名ベースでスコアを取得
    data modify storage indexstorage:core m.Name set from storage indexstorage:core Name
    function indexstorage:rejoin/merge_score.m with storage indexstorage:core m
# プレイヤー名を更新
    function indexstorage:pull/
    data modify storage indexstorage: _.UUIDString set from storage indexstorage:core Name
# リセット
    data remove storage indexstorage:core m
