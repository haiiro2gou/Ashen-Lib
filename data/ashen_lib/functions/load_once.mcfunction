#> ashen_lib:load_once
#
# Functions executed on initial #load
#
# @within function ashen_lib:load

# Version tag
    data modify storage global Ashen.Lib.Version set value "v0.0.0"

# Reset
    scoreboard objectives remove Ashen.Global.ID

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
