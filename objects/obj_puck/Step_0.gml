if y < 0 or y > room_height {
	x = room_width/2
	y = room_height/2
	
	hspeed = 0
	vspeed = 0
	isPlaying = false
}

if x < 0 or x > room_width {
	hspeed = -1 * hspeed
}

