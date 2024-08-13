#> ashen_lib:version/parse/core/
# @within function ashen_lib:version/parse/

# Clear result storage
    data remove storage ashen_lib:api Return

# Split by one
    data modify storage ashen_lib:api Argument.String set from storage ashen_lib:api Argument.VersionTag
    function ashen_lib:string/split/

# Combine to 3 version numeral strings
    data modify storage ashen_lib:api Argument.CharArray set from storage ashen_lib:api Return
    data modify storage ashen_lib:api Argument.Punctuation set value ["v", "."]
    function ashen_lib:string/concat/

# Convert strings to int array
    data modify storage ashen_lib:temp version.str set from storage ashen_lib:api Return
    execute if data storage ashen_lib:temp version.str[0] run function ashen_lib:version/parse/core/s_to_i

# Complete
    data modify storage ashen_lib:api Return.Version set from storage ashen_lib:temp version.int
    data remove storage ashen_lib:temp version.str
    data remove storage ashen_lib:temp version.int
