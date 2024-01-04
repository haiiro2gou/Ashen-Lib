#> indexstorage:push/
# @input as player
#   score @s Ashen.IndexStorage.ID
#   storage
#       indexstorage:
#           _ : component
# @api

# validate
    execute unless score @s Ashen.IndexStorage.ID matches 0.. run function indexstorage:provide/

# push
    execute store result storage indexstorage:core m.id int 1 run scoreboard players get @s Ashen.IndexStorage.ID
    function indexstorage:push/.m with storage indexstorage:core m
