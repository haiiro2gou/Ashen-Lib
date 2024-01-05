#> indexstorage:gc/loop
# @within function
#   indexstorage:gc/tick
#   indexstorage:gc/loop

# 1加える
    execute store result storage indexstorage:core m.id int 1 run scoreboard players add #LoopIndex Ashen.IndexStorage.ID 1
    execute if score #LoopIndex Ashen.IndexStorage.ID > #StorageIDIndex Ashen.Global.Global run return 0

# 存在しなければ削除
    function indexstorage:gc/copy.m with storage indexstorage:core m
    function indexstorage:gc/exec.m with storage indexstorage:core m

# reset
    data remove storage indexstorage:core m

# ループを入れる
    function indexstorage:gc/loop
