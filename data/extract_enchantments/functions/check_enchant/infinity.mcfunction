#> extract_enchantments:check_enchant/infinity
#
#@within extract_enchantments:check_enchant

# アイテムが入っているスロットを取得
execute store result score #get_inventory.slot rukky.func run data get entity @s Inventory[{tag:{Trim:{material:"extract_enchantments:infinity"}}}].Slot
scoreboard players operation #modify_inventory.slot rukky.func = #get_inventory.slot rukky.func

# データを編集用ストレージに取得
function #rukky-func:get_inventory
data modify storage rukky-func modify_inventory.data set from storage rukky-func get_inventory.data

# 該当するエンチャントが存在するか確認し、存在すれば操作を行う
#エンチャ本が対象だった場合
execute if data storage rukky-func get_inventory.data.tag.StoredEnchantments[{id:"minecraft:infinity"}] run function extract_enchantments:modify/eb_infinity
#それ以外が対象だった場合
execute if data storage rukky-func get_inventory.data.tag.Enchantments[{id:"minecraft:infinity"}] run function extract_enchantments:modify/not_eb_infinity
