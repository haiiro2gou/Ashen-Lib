#> indexstorage:provide/.m
# @input args
#   id : int
#   text : string
# @within function indexstorage:provide/

$data modify storage indexstorage:core text set value $(text)
data modify storage indexstorage:core temp.UUIDString set from storage indexstorage:core text.hoverEvent.contents.id
$data modify storage indexstorage: data[$(id)] set from storage indexstorage:core temp
data remove storage indexstorage:core temp