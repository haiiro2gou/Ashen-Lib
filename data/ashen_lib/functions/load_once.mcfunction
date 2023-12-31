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
        #> Random
        # @private
            #declare tag Random
            summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Random"]}
            execute store result score #Random.Base Ashen.Global.Global run data get entity @e[tag=Random,limit=1] UUID[1]
            execute store result score #Random.Carry Ashen.Global.Global run data get entity @e[tag=Random,limit=1] UUID[3]
            kill @e[tag=Random,limit=1]

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

#> Index Storage
    #> Tag
    # @public
        #declare tag Ashen.IndexStorage.HasStorage

    #> Trigger
    # @within function
    #   ashen_lib:handler/first_join
    #   ashen_lib:tick/
    #   indexstorage:**
        scoreboard objectives add Ashen.IndexStorage.ID dummy {"translate": "Ashen.IndexStorage.StorageID", "fallback": "Index Storage: Storage ID"}

    #> Score Holder
    # @within function
    #   ashen_lib:load_once
    #   indexstorage:**
        #declare score_holder #GCInterval
        #declare score_holder #StorageIDIndex
        scoreboard players set #GCInterval Ashen.Global.Global 20
        execute unless score #StorageIDIndex Ashen.Global.Global matches 0.. run scoreboard players set #StorageIDIndex Ashen.Global.Global -1

    #> Storage
    # @within function **
        #declare storage indexstorage:
        #declare storage indexstorage:core
