#> indexstorage:pull/core/exec
# @within function indexstorage:pull/core/

$execute unless data storage indexstorage: Storage[{ID: $(ID)}] run data modify storage indexstorage: Storage append value {ID: $(ID)}
$data modify storage indexstorage: Config set from storage indexstorage: Storage[{ID: $(ID)}]
