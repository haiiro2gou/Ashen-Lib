#> indexstorage:push/
# @api

# Validate
    execute unless data storage indexstorage: Config run tellraw @a [{"nbt": "Ashen.Global.Prefix.ERROR", "storage": "global"}, {"translate": "Ashen.Error.IndexStorage.NoConfig", "fallback": "Config data could not be found"}]

# Exec
    execute if data storage indexstorage: Config run function indexstorage:push/core/ with storage indexstorage: Config

# Reset
    data remove storage indexstorage: Config
