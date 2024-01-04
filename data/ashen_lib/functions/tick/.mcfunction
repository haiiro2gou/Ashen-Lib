#> ashen_lib:tick/
#
# Function executed at #tick
#
# @within tag/function minecraft:tick

# time query
    execute store result storage global Time int 1 run time query gametime

# player
    execute as @a at @s run function ashen_lib:tick/player/

# load dependents
    function #ashen_lib:tick/
