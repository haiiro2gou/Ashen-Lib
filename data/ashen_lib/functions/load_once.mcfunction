#> ashen_lib:load_once
#
# Functions executed on initial #load
#
# @within function ashen_lib:load

# Version tag
    data modify storage global Ashen.Lib.Version set value "v0.4.0"

# Reset
    scoreboard objectives remove Ashen.Lib.FirstJoin

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
        scoreboard objectives add Ashen.Global.UserID dummy {"translate": "Ashen.Global.ScoreFirstJoin", "fallback": "Ashen Lib: User ID"}

    #> Const
    # @public
        scoreboard objectives add Ashen.Global.Const dummy {"translate": "Ashen.Global.ScoreConst", "fallback": "Ashen Lib: Const"}
        function ashen_lib:define_const

    #> Handler
    # @within function
    #   ashen_lib:load_once
    #   ashen_lib:handler/*
    #   ashen_lib:tick/**
        scoreboard objectives add Ashen.Lib.FirstJoin custom:play_time {"translate": "Ashen.Lib.ScoreFirstJoin", "fallback": "Ashen Lib: First Join"}
        scoreboard objectives add Ashen.Lib.Rejoin custom:leave_game {"translate": "Ashen.Lib.ScoreRejoin", "fallback": "Ashen Lib: Rejoin"}
        scoreboard objectives add Ashen.Lib.Death deathCount {"translate": "Ashen.Lib.ScoreDeath", "fallback": "Ashen Lib: Death"}
        scoreboard objectives add Ashen.Lib.Respawn custom:time_since_death {"translate": "Ashen.Lib.ScoreRespawn", "fallback": "Ashen Lib: Respawn"}
        scoreboard objectives add Ashen.Lib.Sneak custom:sneak_time {"translate": "Ashen.Lib.ScoreSneak", "fallback": "Ashen Lib: Sneak"}
        scoreboard objectives add Ashen.Lib.Drop custom:drop {"translate": "Ashen.Lib.ScoreDrop", "fallback": "Ashen Lib: Drop Item"}

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
