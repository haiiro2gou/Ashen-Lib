#> ashen_lib:migration/v0.3.0/
#
# v0.2.0 -> v0.3.0
#
# @within function ashen_lib:migration/

# Migration
    data modify storage global Ashen.Lib.Version set value "v0.3.0"

#> from: b299ba4c342a02f7418e62fc7eb6ccdee33314e1
# @private
    #declare objective Ashen.Global.ID
    scoreboard players operation @a Ashen.Global.UserID = @s Ashen.Global.ID
    scoreboard objectives remove Ashen.Global.ID
