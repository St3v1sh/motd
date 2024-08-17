# Handle first-time join
execute as @a unless score @s motd_joined = @s motd_joined store success score @s motd_joined run tellraw @s {"text":"Put your first time join MOTD here!"}

# Handle subsequent joins
execute as @a unless score @s motd_joined matches 1 store success score @s motd_joined run tellraw @s {"text":"Put your returning player MOTD here!"}
