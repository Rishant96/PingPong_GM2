if y > room_height
	obj_client.cpuScore++
	
if y < 0
	obj_client.plrScore++


if y < 0 or y > room_height {
	x = room_width/2
	y = room_height/2
	hspeed = 0
	vspeed = 5
	isPlaying = false
<<<<<<< HEAD
=======
			
	
>>>>>>> origin/master
}

if y <= 0 {
	plrScore++;	
}

if y >= room_height {
	cpuScore++;
}


if x < 0 or x > room_width {
	hspeed = -1 * hspeed
}
if(room==rm_win){
instance_destroy()
}
if(room==rm_loss){
instance_destroy()
}