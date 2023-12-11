#> indexstorage:pull/core/
# @within function indexstorage:pull/

execute if data storage indexstorage: Config run function indexstorage:push/

data modify storage ashen_lib:temp ID set from storage indexstorage: ID
function indexstorage:pull/core/exec with storage ashen_lib:temp
