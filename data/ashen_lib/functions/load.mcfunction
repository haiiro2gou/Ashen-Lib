#> ashen_lib:load
#
# Functions executed at #load
#
# @within tag/function minecraft:load

# Release Check
    data modify storage global Ashen.Lib.IsProduction set value false

# Load once the first time
    execute if data storage global Ashen.Lib{IsProduction: 1b} unless data storage global Ashen.Lib.Version run function ashen_lib:load_once
    execute if data storage global Ashen.Lib{IsProduction: 0b} run function ashen_lib:load_once

# Migration
    function ashen_lib:migration/

#> Dependent Packs
# @public
    #declare function cmdcaster:load
    #declare function gazerplacer:load
    function #ashen_lib:load
