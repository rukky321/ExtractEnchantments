#> extract_enchantments:modify/not_eb_multishot
#
#@within extract_enchantments:check_enchant/multishot

# エンチャント本をプレイヤの足元に召喚
execute at @s run summon item ~ ~ ~ {PickupDelay:0,Tags:["EE_item"],Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:protection",lvl:0s}]}}}

# エンチャントの内容をコピー
execute at @s run data modify entity @e[tag=EE_item,sort=nearest,limit=1] Item.tag.StoredEnchantments[0] set from storage rukky-func get_inventory.data.tag.Enchantments[{id:"minecraft:multishot"}]

# アイテムの個数を合わせる
execute at @s run data modify entity @e[tag=EE_item,sort=nearest,limit=1] Item.Count set from storage rukky-func get_inventory.data.Count

# 編集用ストレージからエンチャントを削除
data remove storage rukky-func modify_inventory.data.tag.Enchantments[{id:"minecraft:multishot"}]
