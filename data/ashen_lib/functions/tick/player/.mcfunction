#> ashen_lib:tick/player/
#
# Player process per tick
#
# @within function ashen_lib:tick/

#> private
# @public
    #declare tag this

# It's me!
    tag @s add this

# I'm Dead
    execute if entity @s[scores={Ashen.Lib.Death=1..}] run tag @s add Death

# handler
    execute if entity @s[scores={Ashen.Lib.FirstJoin=1}] run function ashen_lib:handler/first_join
    execute if entity @s[scores={Ashen.Lib.Rejoin=1..}] run function ashen_lib:handler/rejoin
    execute if entity @s[scores={Ashen.Lib.Respawn=1}] run function ashen_lib:handler/respawn
    execute if entity @s[scores={Ashen.Lib.Sneak=1..},predicate=ashen_lib:is_sneaking] run function ashen_lib:handler/sneak
    execute if entity @s[advancements={ashen_lib:handler/consume_item=true}] run function ashen_lib:handler/consume_item
    execute if entity @s[advancements={ashen_lib:handler/killed=true}] run function ashen_lib:handler/killed
    execute if entity @s[advancements={ashen_lib:handler/inventory_change=true}] run function ashen_lib:handler/inventory_change
    execute if entity @s[advancements={ashen_lib:handler/using_item=true}] run function ashen_lib:handler/using_item
    execute if entity @s[scores={Ashen.Lib.Drop=1..}] run function ashen_lib:handler/drop

# dependents
    function #ashen_lib:tick/player/

# Reset
    tag @s remove this
    function ashen_lib:tick/player/reset
