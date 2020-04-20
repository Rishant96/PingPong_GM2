if y < 0 or y > room_height {
	x = room_width/2
	y = room_height/2
	hspeed = 0
	vspeed = 5
	isPlaying = false
	obj_client.cpuScore++
	obj_client.plrScore++;
}


if x < 0 or x > room_width {
	hspeed = -1 * hspeed
}

