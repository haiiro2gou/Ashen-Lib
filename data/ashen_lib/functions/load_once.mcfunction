#> ashen_lib:load_once
#
# Functions executed on initial #load
#
# @within function ashen_lib:load

# Version tag
    data modify storage global Ashen.Lib.Version set value "v0.2.0"

# Reset
    scoreboard objectives remove Ashen.Global.ID

# Dimension
    #> Clipboard
    # @public
        #declare dimension ashen_lib:clipboard
        #declare dimension_type ashen_lib:clipboard
        execute in ashen_lib:clipboard run forceload add 0 0
        execute in ashen_lib:clipboard run setblock 0 0 0 shulker_box{Lock: "lock"}
        execute in ashen_lib:clipboard run summon marker 0 0 0 {UUID: [I; 0, 0, 0, 0]}

# Score
    #> Global
    # @public
        scoreboard objectives add Ashen.Global.Global dummy {"translate": "Ashen.Global.ScoreGlobal", "fallback": "Ashen Lib: Global"}

    #> User ID
    # @public
        scoreboard objectives add Ashen.Global.ID dummy {"translate": "Ashen.Global.ScoreFirstJoin", "fallback": "Ashen Lib: User ID"}

    #> Const
    # @public
        scoreboard objectives add Ashen.Global.Const dummy {"translate": "Ashen.Global.ScoreConst", "fallback": "Ashen Lib: Const"}
        function ashen_lib:define_const

    #> Temporary
    # @public
        scoreboard objectives add Ashen.Global.Temporary dummy {"translate": "Ashen.Global.ScoreTemporary", "fallback": "Ashen Lib: Temp"}

# Storage
    #> Global
    # @public
        #declare storage global
        data modify storage global Ashen.Global.Prefix.INFO set value "§3INFO >> §r"
        data modify storage global Ashen.Global.Prefix.ERROR set value "§cERROR >> §r"
        data modify storage global Ashen.Global.Prefix.WARN set value "§eWARN >> §r"

    #> API
    # @public
        #declare storage ashen_lib:api

    #> Temporary
    # @public
        #declare storage ashen_lib:temp

#> Dependent Datapack
    # Index Storage
        function indexstorage:init
