#> indexstorage:gc/resize/loop
# @within function
#   indexstorage:tick
#   indexstorage:gc/resize/data

# 末尾を削除
    data remove storage indexstorage: data[-1]
# ループ
    scoreboard players remove #ResizeIndex Ashen.IndexStorage.Calc 1
    execute if score #ResizeIndex Ashen.IndexStorage.Calc > #StorageIDIndex Ashen.Global.Global run function indexstorage:gc/resize/data
