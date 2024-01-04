#> indexstorage:gc/tick
# @within tag/function ashen_lib:tick/

#> Val
# @private
    #declare score_holder #CurrentTime
    #declare score_holder #LatestGC

# 前回GCからの経過時間を取得
    execute store result score #CurrentTime Ashen.Global.Temporary run data get storage global Time 1
    execute store result score #LatestGC Ashen.Global.Temporary run data get storage indexstorage:core LatestGC 1
    scoreboard players operation #CurrentTime Ashen.Global.Temporary -= #LatestGC Ashen.Global.Temporary

# #GCDuration分経過していたらgcループを発火
    execute if score #CurrentTime Ashen.Global.Temporary >= #GCInterval Ashen.Global.Global unless score #LoopIndex Ashen.IndexStorage.ID matches 0.. run scoreboard players set #LoopIndex Ashen.IndexStorage.ID -1
    execute if score #CurrentTime Ashen.Global.Temporary >= #GCInterval Ashen.Global.Global run function indexstorage:gc/loop
    execute if score #CurrentTime Ashen.Global.Temporary >= #GCInterval Ashen.Global.Global store result storage indexstorage:core LatestGC int 1 run scoreboard players get #CurrentTime Ashen.Global.Temporary

# リセット
    scoreboard players reset #CurrentTime Ashen.Global.Temporary
    scoreboard players reset #LatestGC Ashen.Global.Temporary
    scoreboard players reset #LoopIndex Ashen.IndexStorage.ID
