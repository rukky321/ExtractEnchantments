#> extract_enchantments:check
#
# @private

# インベントリ内に該当するアイテムがあれば実行する
execute if data entity @s Inventory[{tag:{Trim:{pattern:"minecraft:book"}}}] run function extract_enchantments:check_enchant

# 進捗をリセット
advancement revoke @s only extract_enchantments:check