#> indexstorage:gc/exec.m
# @input args
#   name : string
# @within function indexstorage:gc/loop

$execute if score $(name) Ashen.IndexStorage.ID matches 0.. run return 0
function indexstorage:deprive/ with storage indexstorage:core m
