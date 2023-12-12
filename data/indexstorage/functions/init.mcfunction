#> indexstorage:init
# @within function ashen_lib:load_once

# Reset
    scoreboard objectives remove Ashen.IndexStorage.ID

# Scoreboard
    #> Trigger
    # @within function indexstorage:**
        scoreboard objectives add Ashen.IndexStorage.ID trigger {"translate": "Ashen.IndexStorage.ScoreID", "fallback": "Index Storage: Storage ID"}
        scoreboard objectives add Ashen.IndexStorage.Trigger trigger {"translate": "Ashen.IndexStorage.ScoreTrigger", "fallback": "Index Storage: Trigger"}

# Storage
    #> Index Storage
    # @public
        #declare storage indexstorage:
        data modify storage indexstorage: {} set value {Storage: []}
