vspeed = (vspeed + random(3)) * 1.1
hspeed = (hspeed + random(3)) * 1.1

hspeed = -1 * hspeed

last_touch = other.id
audio_play_sound(snd_bounce,1,false)