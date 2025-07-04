data modify storage battlefront:data Motion set from entity @s Motion


execute store result storage battlefront:data Motion[0] double 0.00002 run data get storage battlefront:data Motion[0] 90000
execute store result storage battlefront:data Motion[1] double 0.00002 run data get storage battlefront:data Motion[1] 90000
execute store result storage battlefront:data Motion[2] double 0.00002 run data get storage battlefront:data Motion[2] 90000

data modify entity @s Motion set from storage battlefront:data Motion

tag @s add fixed

schedule function battlefront:extendthrowfix 2t append