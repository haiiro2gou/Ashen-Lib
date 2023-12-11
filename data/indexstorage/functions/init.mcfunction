#> indexstorage:init
# @within function ashen_lib:load_once


# Scoreboard
    #> Trigger
    # @within function indexstorage:**
        scoreboard objectives add Ashen.IndexStorage.Trigger trigger {"translate": "Ashen.IndexStorage.ScoreTrigger", "fallback": "Index Storage: Trigger"}

# Storage
    #> Index Storage
    # @public
        #declare storage indexstorage:
        data modify storage indexstorage: {} set value {Count: 0, Storage: []}
