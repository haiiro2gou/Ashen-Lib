#> ashen_lib:random/
#
# 0-65535の乱数を返します。
#
# @output result score uShort
# @api

scoreboard players operation #Random.Base Ashen.Global.Global *= #31743 Ashen.Global.Const
scoreboard players operation #Random.Base Ashen.Global.Global += #Random.Carry Ashen.Global.Global
scoreboard players operation #Random.Carry Ashen.Global.Global = #Random.Base Ashen.Global.Global
scoreboard players operation #Random.Carry Ashen.Global.Global /= #65536 Ashen.Global.Const
scoreboard players operation #Random.Base Ashen.Global.Global %= #65536 Ashen.Global.Const

return run scoreboard players get #Random.Base Ashen.Global.Global