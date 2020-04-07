isPlaying = !isPlaying

if !isPlaying {
	hspeed = 0
	vspeed = 0
}
else {
	hspeed = random_range(-5, 5)	
	vspeed = random_range(-5, 5)
}
