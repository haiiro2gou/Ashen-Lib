#> ashen_lib:version/parser/core/
# @within function ashen_lib:version/parser/

# Clear result storage
    data remove storage ashen_lib:api Return

# Split by one
    data modify storage ashen_lib:api Argument.String set from storage ashen_lib:api Argument.Version
    function ashen_lib:string/split/

# Combine to 3 version numeral strings
    data modify storage ashen_lib:api Argument.CharArray set from storage ashen_lib:api Return
    data modify storage ashen_lib:api Argument.Punctuation set value ["v", "."]
    function ashen_lib:string/concat/

# Convert strings to int array
    data modify storage ashen_lib:temp version.str set from storage ashen_lib:api Return
    data modify storage ashen_lib:api Argument.String set from storage ashen_lib:temp version.str[0]
    function ashen_lib:string/convert/int/
    data modify storage ashen_lib:temp version.int append from storage ashen_lib:api Return
    data modify storage ashen_lib:api Argument.String set from storage ashen_lib:temp version.str[1]
    function ashen_lib:string/convert/int/
    data modify storage ashen_lib:temp version.int append from storage ashen_lib:api Return
    data modify storage ashen_lib:api Argument.String set from storage ashen_lib:temp version.str[2]
    function ashen_lib:string/convert/int/
    data modify storage ashen_lib:temp version.int append from storage ashen_lib:api Return

# Complete
    data modify storage ashen_lib:api Return set from storage ashen_lib:temp version.int
    data remove storage ashen_lib:temp version
