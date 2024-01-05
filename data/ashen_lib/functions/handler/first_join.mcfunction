#> ashen_lib:handler/first_join
# @within function ashen_lib:tick/player/

#> Private
# @private
    #declare score_holder #UserIDIndex

# User ID
    scoreboard players add #UserIDIndex Ashen.Global.Global 1
    scoreboard players operation @s Ashen.Global.UserID = #UserIDIndex Ashen.Global.Global

# Storage
    execute unless score @s Ashen.IndexStorage.ID matches 0.. run function indexstorage:provide/

# Prevention of respawn event
    scoreboard players set @s Ashen.Lib.Respawn 81

# load dependents
    function #ashen_lib:handler/first_join
