isPlaying = !isPlaying

if !isPlaying {
	hspeed = 0
	vspeed = 0
}
else {
	hspeed = random_range(-6, 6)
	vspeed = random_range(-3, 3)
}
