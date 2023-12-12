#> ashen_lib:handler/using_item
# @within function ashen_lib:tick/player/

# trigger it
    tag @s add Ashen.Lib.UsingItem
# reset
    advancement revoke @s only ashen_lib:handler/using_item

# load dependents
    function #ashen_lib:handler/using_item
    