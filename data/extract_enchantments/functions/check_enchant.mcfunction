#> extract_enchantments:check_enchant
#
# @within extract_enchantments:check

# trim.materialの内容から編集対象を決める
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:water_bucket"}}}] run function extract_enchantments:check_enchant/aqua_affinity
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:spider_eye"}}}] run function extract_enchantments:check_enchant/bane_of_arthropods
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:gunpowder"}}}] run function extract_enchantments:check_enchant/blast_protection
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:lightning_rod"}}}] run function extract_enchantments:check_enchant/channeling
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:lead"}}}] run function extract_enchantments:check_enchant/binding_curse
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:golden_carrot"}}}] run function extract_enchantments:check_enchant/vanishing_curse
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:cod"}}}] run function extract_enchantments:check_enchant/depth_strider
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:golden_pickaxe"}}}] run function extract_enchantments:check_enchant/efficiency
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:feather"}}}] run function extract_enchantments:check_enchant/feather_falling
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:blaze_rod"}}}] run function extract_enchantments:check_enchant/fire_aspect
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:magma_cream"}}}] run function extract_enchantments:check_enchant/fire_protection
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:fire_charge"}}}] run function extract_enchantments:check_enchant/flame
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:gold_nugget"}}}] run function extract_enchantments:check_enchant/fortune
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:ice"}}}] run function extract_enchantments:check_enchant/frost_walker
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:prismarine_shard"}}}] run function extract_enchantments:check_enchant/impaling
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:arrow"}}}] run function extract_enchantments:check_enchant/infinity
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:stick"}}}] run function extract_enchantments:check_enchant/knockback
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:golden_sword"}}}] run function extract_enchantments:check_enchant/looting
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:shield"}}}] run function extract_enchantments:check_enchant/loyalty
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:tropical_fish"}}}] run function extract_enchantments:check_enchant/luck_of_the_sea
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:fishing_rod"}}}] run function extract_enchantments:check_enchant/lure
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:ghast_tear"}}}] run function extract_enchantments:check_enchant/mending
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:spectral_arrow"}}}] run function extract_enchantments:check_enchant/multishot
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:iron_nugget"}}}] run function extract_enchantments:check_enchant/piercing
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:flint"}}}] run function extract_enchantments:check_enchant/power
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:leather"}}}] run function extract_enchantments:check_enchant/projectile_protection
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:obsidian"}}}] run function extract_enchantments:check_enchant/protection
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:piston"}}}] run function extract_enchantments:check_enchant/punch
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:bone"}}}] run function extract_enchantments:check_enchant/quick_charge
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:pufferfish"}}}] run function extract_enchantments:check_enchant/respiration
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:salmon"}}}] run function extract_enchantments:check_enchant/riptide
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:iron_sword"}}}] run function extract_enchantments:check_enchant/sharpness
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:string"}}}] run function extract_enchantments:check_enchant/silk_touch
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:rotten_flesh"}}}] run function extract_enchantments:check_enchant/smite
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:soul_sand"}}}] run function extract_enchantments:check_enchant/soul_speed
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:brush"}}}] run function extract_enchantments:check_enchant/sweeping
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:sugar"}}}] run function extract_enchantments:check_enchant/swift_sneak
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:cactus"}}}] run function extract_enchantments:check_enchant/thorns
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:cobbled_deepslate"}}}] run function extract_enchantments:check_enchant/unbreaking
execute if data entity @s Inventory[{tag:{Trim:{material:"minecraft:paper"}}}] run function extract_enchantments:check_enchant/all

# 召喚されたエンチャント本からタグを消す
tag @e[tag=EE_item] remove EE_item

# 編集用ストレージからトリムを消去
data remove storage rukky-func modify_inventory.data.tag.Trim

# 編集を適用
function #rukky-func:modify_inventory