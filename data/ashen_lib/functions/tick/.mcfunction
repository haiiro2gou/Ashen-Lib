#> ashen_lib:tick/
#
# Function executed at #tick
#
# @within tag/function minecraft:tick

# time query
    execute store result storage global Time int 1 run time query gametime

# entity storage
    execute as @e unless score @s Ashen.IndexStorage.ID matches 0.. run function indexstorage:provide/

# player
    execute as @a at @s run function ashen_lib:tick/player/

# load dependents
    function #ashen_lib:tick/
