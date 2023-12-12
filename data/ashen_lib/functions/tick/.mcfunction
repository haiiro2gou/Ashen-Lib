#> ashen_lib:tick/
#
# Function executed at #tick
#
# @within tag/function minecraft:tick

# player
    execute as @a at @s run function ashen_lib:tick/player/

# load dependents
    function #ashen_lib:tick/
