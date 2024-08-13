#> indexstorage:deprive/
# @input score @s Ashen.IndexStorage.ID
# @api

execute if score @s Ashen.IndexStorage.ID matches 1.. store result storage indexstorage:core m.id int 1 run scoreboard players get @s Ashen.IndexStorage.ID
function indexstorage:deprive/.m with storage indexstorage:core m

data remove storage indexstorage:core m
scoreboard players reset @s Ashen.IndexStorage.ID
