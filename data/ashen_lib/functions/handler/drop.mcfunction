#> ashen_lib:handler/drop
# @within function ashen_lib:tick/player/

# trigger it
    tag @s add Ashen.Lib.DropItem
# reset
    scoreboard players reset @s Ashen.Lib.Drop

# load dependents
    function #ashen_lib:handler/drop
