#> ashen_lib:load_once
#
# Functions executed on initial #load
#
# @within function ashen_lib:load

# Version tag
    data modify storage global Ashen.Lib.Version set value "v0.1.1"

# Reset
    scoreboard objectives remove Ashen.Global.ID

# Dimension
    #> Clipboard
    # @public
        #declare dimension ashen_lib:clipboard
        #declare dimension_type ashen_lib:clipboard
        execute in ashen_lib:clipboard run forceload add 0 0
        execute in ashen_lib:clipboard run setblock 0 0 0 shulker_box{Lock: "lock"}

# Score
    #> Const
    # @public
        scoreboard objectives add Ashen.Global.Const dummy
        function ashen_lib:define_const

    #> Entity ID
    # @public
        scoreboard objectives add Ashen.Global.ID dummy

    #> Temporary Score
    # @public
        scoreboard objectives add Ashen.Global.Temporary dummy

# Storage
    #> API
    # @public
        #declare storage ashen_lib:api

    #> Global
    # @public
        #declare storage global
        data modify storage global Ashen.Global.Prefix.INFO set value "§3INFO >> §r"
        data modify storage global Ashen.Global.Prefix.ERROR set value "§cERROR >> §r"
        data modify storage global Ashen.Global.Prefix.WARN set value "§eWARN >> §r"

    #> Temporary
    # @public
        #declare storage ashen_lib:temp

#> Dependent Datapack
    # Index Storage
        function indexstorage:init
