#> indexstorage:tick
# @within tag/function ashen_lib:tick/

#> Val
# @private
    #declare score_holder #CurrentTime
    #declare score_holder #LatestGC

# 前回GCからの経過時間を取得
    execute store result score #CurrentTime Ashen.Global.Temporary run data get storage global Time 1
    execute store result score #LatestGC Ashen.Global.Temporary run data get storage indexstorage:core LatestGC 1
    scoreboard players operation #LatestGC Ashen.Global.Temporary -= #CurrentTime Ashen.Global.Temporary
    scoreboard players operation #LatestGC Ashen.Global.Temporary *= #-1 Ashen.Global.Const

# (#GCDuration)tick経過していたらgcループを発火
    # 存在しないデータを削除
        execute if score #LatestGC Ashen.Global.Temporary >= #GCInterval Ashen.Global.Global run scoreboard players set #GCIndex Ashen.IndexStorage.ID -1
        execute if score #LatestGC Ashen.Global.Temporary >= #GCInterval Ashen.Global.Global run function indexstorage:gc/main/loop
        execute if score #LatestGC Ashen.Global.Temporary >= #GCInterval Ashen.Global.Global store result storage indexstorage:core LatestGC int 1 run scoreboard players get #CurrentTime Ashen.Global.Temporary
    # 配列のリサイズ
        execute if score #LatestGC Ashen.Global.Temporary >= #GCInterval Ashen.Global.Global run scoreboard players operation #ResizeIndex Ashen.Global.Temporary = #StorageIDIndex Ashen.Global.Global
        execute if score #LatestGC Ashen.Global.Temporary >= #GCInterval Ashen.Global.Global run scoreboard players set #StorageIDIndex Ashen.Global.Global -1
        execute if score #LatestGC Ashen.Global.Temporary >= #GCInterval Ashen.Global.Global run scoreboard players operation #StorageIDIndex Ashen.Global.Global > * Ashen.IndexStorage.ID
        execute if score #LatestGC Ashen.Global.Temporary >= #GCInterval Ashen.Global.Global run scoreboard players operation #ResizeIndex Ashen.Global.Temporary -= #StorageIDIndex Ashen.Global.Global
        execute if score #LatestGC Ashen.Global.Temporary >= #GCInterval Ashen.Global.Global if score #ResizeIndex Ashen.Global.Temporary matches 1.. run function indexstorage:gc/resize/loop

# リセット
    scoreboard players reset #CurrentTime Ashen.Global.Temporary
    scoreboard players reset #LatestGC Ashen.Global.Temporary
    scoreboard players reset #GCIndex Ashen.IndexStorage.ID
    scoreboard players reset #ResizeIndex Ashen.Global.Temporary
