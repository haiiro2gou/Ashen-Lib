#> ashen_lib:handler/rejoin
# @within function ashen_lib:tick/player/

# trigger it
    tag @s add Ashen.Lib.Rejoin
# reset
    scoreboard players reset @s Ashen.Lib.Rejoin

# load dependents
    function #ashen_lib:handler/rejoin
