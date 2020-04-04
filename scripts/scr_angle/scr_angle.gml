


//angle = obj_puck.counter+irandom_range(45,130)

/*if(angle<45){
angle = 45
}

else if(angle>130){
angle = 130
}*/

if(place_meeting(obj_puck.x,obj_puck.y,obj_topPaddle)==true){
angle = irandom_range(250,300)
}

else if(place_meeting(obj_puck.x,obj_puck.y,obj_bottomPaddle)==true){
angle = irandom_range(45,135)
}


obj_puck.direction = angle

