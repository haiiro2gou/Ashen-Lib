#> indexstorage:gc/tick
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
    execute if score #LatestGC Ashen.Global.Temporary >= #GCInterval Ashen.Global.Global run scoreboard players set #LoopIndex Ashen.IndexStorage.ID -1
    execute if score #LatestGC Ashen.Global.Temporary >= #GCInterval Ashen.Global.Global run function indexstorage:gc/loop
    execute if score #LatestGC Ashen.Global.Temporary >= #GCInterval Ashen.Global.Global store result storage indexstorage:core LatestGC int 1 run scoreboard players get #CurrentTime Ashen.Global.Temporary

# リセット
    scoreboard players reset #CurrentTime Ashen.Global.Temporary
    scoreboard players reset #LatestGC Ashen.Global.Temporary
    scoreboard players reset #LoopIndex Ashen.IndexStorage.ID
