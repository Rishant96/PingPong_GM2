obj_puck.counter++

angle = obj_puck.counter*1.5

if(angle<45){
angle = 45
}

else if(angle>130){
angle = 130
}

obj_puck.direction = angle

