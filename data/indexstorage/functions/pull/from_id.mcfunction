#> indexstorage:pull/from_id
# @input as player
#   score # Ashen.IndexStorage.ID
# @api

# validate
    execute if data storage indexstorage: _ run function indexstorage:push/
# データを回収する
    execute store result storage indexstorage:core m.id int 1 run scoreboard players get # Ashen.IndexStorage.ID
    execute if data storage indexstorage:core m.id run function indexstorage:pull/.m with storage indexstorage:core m
# リセット
    scoreboard players reset # Ashen.IndexStorage.ID
    data remove storage indexstorage:core m
