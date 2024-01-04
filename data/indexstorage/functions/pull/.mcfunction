#> indexstorage:pull/
# @input as player
#   score @s Ashen.IndexStorage.ID
# @api

# validate
    execute unless score @s Ashen.IndexStorage.ID matches 0.. run function indexstorage:provide/

# データを回収する
    execute store result storage indexstorage:core m.id int 1 run scoreboard players get @s Ashen.IndexStorage.ID
    function indexstorage:pull/.m with storage indexstorage:core m
