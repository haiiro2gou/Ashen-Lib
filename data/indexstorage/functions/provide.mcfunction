#> indexstorage:provide
# @api

#> private
# @private
    #declare score_holder #Count

# ID Provide
    execute unless score @s Ashen.Global.ID matches -2147483648..2147483647 store result score #Count Ashen.Global.Temporary run data get storage indexstorage: Count
    execute unless score @s Ashen.Global.ID matches -2147483648..2147483647 run scoreboard players add #Count Ashen.Global.Temporary 1
    execute unless score @s Ashen.Global.ID matches -2147483648..2147483647 run scoreboard players operation @s Ashen.Global.ID = #Count Ashen.Global.Temporary

# Reset
    scoreboard players reset #Count Ashen.Global.Temporary
