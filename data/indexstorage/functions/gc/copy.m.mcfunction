#> indexstorage:gc/copy.m
# @input args
#   id : int
# @within function indexstorage:gc/loop

$data modify storage indexstorage:core m.name set from storage indexstorage: data[$(id)].UUIDString