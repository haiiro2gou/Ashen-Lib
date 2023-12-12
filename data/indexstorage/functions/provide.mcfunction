#> indexstorage:provide
# @api

#> private
# @private
    #declare score_holder #StorageIDIndex

# ID Provide
    execute unless score @s Ashen.IndexStorage.ID matches -2147483648..2147483647 run scoreboard players add #StorageIDIndex Ashen.Global.Global 1
    execute unless score @s Ashen.IndexStorage.ID matches -2147483648..2147483647 run scoreboard players operation @s Ashen.IndexStorage.ID = #StorageIDIndex Ashen.Global.Global
