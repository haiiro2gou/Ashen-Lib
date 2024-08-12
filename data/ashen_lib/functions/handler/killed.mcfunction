#> ashen_lib:handler/killed
# @within
#   advancement ashen_lib:handler/killed
#   function ashen_lib:tick/player/

# trigger it
    tag @s add Ashen.Lib.Killed
# reset
    advancement revoke @s only ashen_lib:handler/killed

# load dependents
    function #ashen_lib:handler/killed
