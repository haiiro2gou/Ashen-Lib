#> indexstorage:init
#
# IndexStorageの初期化
#
# @within tag/function ashen_lib:load/once

#> ストレージの初期化
# @public
    #declare storage indexstorage:
    #declare storage indexstorage:core
    #declare tag Ashen.IndexStorage.HasStorage
    #declare score_holder #StorageIDIndex
    #declare score_holder #GCInterval
    scoreboard objectives add Ashen.IndexStorage.ID dummy {"text":"[IndexStorage] Storage ID"}
    scoreboard objectives add Ashen.IndexStorage.Calc dummy {"text":"[IndexStorage] Score for Calcuration"}
    data modify storage indexstorage: _ set value {}
    data modify storage indexstorage: data set value [{}]
    data modify storage indexstorage:core UnusedID set value [I;]
    scoreboard players set #StorageIDIndex Ashen.Global.Global 0
    scoreboard players set #GCInterval Ashen.Global.Global 1200
