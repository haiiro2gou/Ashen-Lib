#> indexstorage:hexadecimal/for_each
# @within function
#   indexstorage:hexadecimal/
#   indexstorage:hexadecimal/for_each

# 数値を取得
    execute store result score #Geta Ashen.IndexStorage.Calc run data get storage indexstorage:core UUIDInt[-1]
    execute if score #Geta Ashen.IndexStorage.Calc matches ..-1 run scoreboard players set #isNegative Ashen.IndexStorage.Calc 1
    execute if score #isNegative Ashen.IndexStorage.Calc matches 1 run scoreboard players add #Geta Ashen.IndexStorage.Calc 1073741824
    execute if score #isNegative Ashen.IndexStorage.Calc matches 1 run scoreboard players add #Geta Ashen.IndexStorage.Calc 1073741824
# 桁毎に処理
    # 1
        scoreboard players operation #Digit Ashen.IndexStorage.Calc = #Geta Ashen.IndexStorage.Calc
        scoreboard players operation #Digit Ashen.IndexStorage.Calc %= #16 Ashen.Global.Const
        scoreboard players operation #Geta Ashen.IndexStorage.Calc /= #16 Ashen.Global.Const
        function indexstorage:hexadecimal/i_to_s
    # 2
        scoreboard players operation #Digit Ashen.IndexStorage.Calc = #Geta Ashen.IndexStorage.Calc
        scoreboard players operation #Digit Ashen.IndexStorage.Calc %= #16 Ashen.Global.Const
        scoreboard players operation #Geta Ashen.IndexStorage.Calc /= #16 Ashen.Global.Const
        function indexstorage:hexadecimal/i_to_s
    # 3
        scoreboard players operation #Digit Ashen.IndexStorage.Calc = #Geta Ashen.IndexStorage.Calc
        scoreboard players operation #Digit Ashen.IndexStorage.Calc %= #16 Ashen.Global.Const
        scoreboard players operation #Geta Ashen.IndexStorage.Calc /= #16 Ashen.Global.Const
        function indexstorage:hexadecimal/i_to_s
    # 4
        scoreboard players operation #Digit Ashen.IndexStorage.Calc = #Geta Ashen.IndexStorage.Calc
        scoreboard players operation #Digit Ashen.IndexStorage.Calc %= #16 Ashen.Global.Const
        scoreboard players operation #Geta Ashen.IndexStorage.Calc /= #16 Ashen.Global.Const
        function indexstorage:hexadecimal/i_to_s
    # 5
        scoreboard players operation #Digit Ashen.IndexStorage.Calc = #Geta Ashen.IndexStorage.Calc
        scoreboard players operation #Digit Ashen.IndexStorage.Calc %= #16 Ashen.Global.Const
        scoreboard players operation #Geta Ashen.IndexStorage.Calc /= #16 Ashen.Global.Const
        function indexstorage:hexadecimal/i_to_s
    # 6
        scoreboard players operation #Digit Ashen.IndexStorage.Calc = #Geta Ashen.IndexStorage.Calc
        scoreboard players operation #Digit Ashen.IndexStorage.Calc %= #16 Ashen.Global.Const
        scoreboard players operation #Geta Ashen.IndexStorage.Calc /= #16 Ashen.Global.Const
        function indexstorage:hexadecimal/i_to_s
    # 7
        scoreboard players operation #Digit Ashen.IndexStorage.Calc = #Geta Ashen.IndexStorage.Calc
        scoreboard players operation #Digit Ashen.IndexStorage.Calc %= #16 Ashen.Global.Const
        scoreboard players operation #Geta Ashen.IndexStorage.Calc /= #16 Ashen.Global.Const
        function indexstorage:hexadecimal/i_to_s
    # 8
        scoreboard players operation #Digit Ashen.IndexStorage.Calc = #Geta Ashen.IndexStorage.Calc
        execute if score #isNegative Ashen.IndexStorage.Calc matches 1 run scoreboard players add #Digit Ashen.IndexStorage.Calc 8
        scoreboard players operation #Digit Ashen.IndexStorage.Calc %= #16 Ashen.Global.Const
        function indexstorage:hexadecimal/i_to_s
# リセット
    scoreboard players reset #Digit
    scoreboard players reset #Geta
    scoreboard players reset #isNegative
    data remove storage indexstorage:core UUIDInt[-1]
    execute if data storage indexstorage:core UUIDInt[0] run function indexstorage:hexadecimal/for_each
