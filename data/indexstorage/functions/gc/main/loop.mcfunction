#> indexstorage:gc/main/loop
# @within function
#   indexstorage:tick
#   indexstorage:gc/main/loop

# 1加える
    execute store result storage indexstorage:core m.id int 1 run scoreboard players add #GCIndex Ashen.Global.Temporary 1
    execute if score #GCIndex Ashen.Global.Temporary > #StorageIDIndex Ashen.Global.Global run return 0

# 存在しなければ削除
    function indexstorage:gc/main/copy.m with storage indexstorage:core m
    function indexstorage:gc/main/exec.m with storage indexstorage:core m

# reset
    data remove storage indexstorage:core m

# ループを入れる
    function indexstorage:gc/main/loop
