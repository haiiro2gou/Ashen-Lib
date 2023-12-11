#> ashen_lib:migration/v0.1.0/
#
# v0.0.1 -> v0.1.0
#
# @within function ashen_lib:migration/

# Migration
    data modify storage global Ashen.Lib.Version set value "v0.1.0"

#> from: eebe2035691576d4b29661bd1b859003a4368784
    execute in ashen_lib:clipboard run forceload add 0 0
    execute in ashen_lib:clipboard run setblock 0 0 0 shulker_box{Lock: "lock"}
