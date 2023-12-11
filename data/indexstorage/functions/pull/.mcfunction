#> indexstorage:pull/
# @api

# Validate
    execute unless data storage indexstorage: ID run function indexstorage:provide
    execute unless data storage indexstorage: ID store result storage indexstorage: ID int 1 run scoreboard players get @s Ashen.Global.ID

# Exec
    execute if data storage indexstorage: ID run function indexstorage:pull/core/

# Reset
    data remove storage indexstorage: ID
