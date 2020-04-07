/// @description 
// You can write your code in this editor

/*
if !(keyboard_check(vk_left) or keyboard_check(vk_right)) {
	if hspeed > 0 then hspeed -= 1
	if hspeed < 0 then hspeed += 1
}
hspeed = clamp(hspeed, -5, 5)

x = clamp(x, sprite_width/2, room_width-(sprite_width/2))
*/

hspd = walking_speed*(keys[KEY_RIGHT]-keys[KEY_LEFT])
x += hspd
x = clamp(x, sprite_width/2, room_width-(sprite_width/2))
