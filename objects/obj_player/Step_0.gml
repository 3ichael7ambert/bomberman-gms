if keyboard_check(k_up) and place_free(x,y-5) and !keyboard_check(k_down) y-=5
if keyboard_check(k_down) and place_free(x,y+5) and !keyboard_check(k_up) y+=5
if keyboard_check(k_left) and place_free(x-5,y) and !keyboard_check(k_right) x-=5
if keyboard_check(k_right) and place_free(x+5,y) and !keyboard_check(k_left) x+=5

if keyboard_check_pressed(k_shoot)==true
{
if sprite_index==sprite12 sprite_index=sprite14
else sprite_index=sprite12
}
if keyboard_check_pressed(k_jump)==true
{
if sprite_index==sprite12 sprite_index=sprite14
else sprite_index=sprite12
}
if keyboard_check_pressed(k_special)==true
{
if sprite_index==sprite12 sprite_index=sprite14
else sprite_index=sprite12
}
if keyboard_check_pressed(k_dash)==true
{
if sprite_index==sprite12 sprite_index=sprite14
else sprite_index=sprite12
}

