if y < sprite_height/2 or y > room_height - (sprite_height/2) {
	x = room_width/2
	y = room_height/2
	
	hspeed = 0
	vspeed = 0
	isPlaying = false
}

if x < sprite_width/2 or x > room_width - sprite_width/2 {
	hspeed = -1 * hspeed
}

