#> ashen_lib:handler/consume_item
# @within
#   advancement ashen_lib:handler/consume_item
#   function ashen_lib:tick/player/

# trigger it
    tag @s add Ashen.Lib.UseItem
# reset
    advancement revoke @s only ashen_lib:handler/consume_item

# load dependents
    function #ashen_lib:handler/consume_item
