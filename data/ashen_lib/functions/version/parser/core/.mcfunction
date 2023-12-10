#> ashen_lib:version/parser/core/
# @within function ashen_lib:version/parser/

# Split by one
    data modify storage ashen_lib:api Argument.String set from storage ashen_lib:api Argument.Version
    function ashen_lib:string/split/

# Combine to 3 numbers
    data modify storage ashen_lib:api Argument.CharArray set from storage ashen_lib:api Return
    function ashen_lib:string/concat/
