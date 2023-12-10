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

    #> Temporary
    # @public
        #declare storage ashen_lib:temp
