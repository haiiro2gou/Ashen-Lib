#> ashen_lib:array/_index.d
# @private

#> 共通scoreholder
# @within function ashen_lib:array/**
    #declare score_holder #Index
    #declare score_holder #ListSize
    #declare score_holder #Argument.Index

#> Picks処理用
# @within function
#   ashen_lib:array/picks
#   ashen_lib:array/core/picks
    #declare score_holder #Prev
    #declare score_holder #Cur

#> Compare処理用
# @within function
#   ashen_lib:array/compare*
#   ashen_lib:array/core/compare*
    #declare score_holder #Temp

#> Sort処理用
# @within function
#   ashen_lib:array/sort/*
#   ashen_lib:array/core/sort/**
    #declare score_holder #Value1
    #declare score_holder #Value2

#> sum処理用
# @within function
#   ashen_lib:array/sum
#   ashen_lib:array/core/sum
    #declare score_holder #isNumeric

#> 算術処理用
# @within function
#   ashen_lib:array/**math/*
    #declare score_holder #Sum
    #declare score_holder #Mul
    #declare score_holder #Temp
    #declare score_holder #Temp2