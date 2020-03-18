if keyboard_check_pressed(vk_down) {
	cur_index++;
}

if keyboard_check_pressed(vk_up) {
	cur_index--;	
}

cur_index = clamp(cur_index, 0, array_length_1d(menu)-1)