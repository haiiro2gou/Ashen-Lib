#> ashen_lib:migration/
#
# Migration Process
#
# @within function ashen_lib:load

execute if data storage global Ashen.Lib{Version: "v0.0.0"} run function ashen_lib:migration/v0.0.1/
execute if data storage global Ashen.Lib{Version: "v0.0.1"} run function ashen_lib:migration/v0.1.0/
