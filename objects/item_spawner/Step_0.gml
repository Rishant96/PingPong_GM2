/// @description Insert description here
// You can write your code in this editor
counter++

if(counter%23=0){
instance_create_depth(room_width/2,room_height/2,1,obj_puckSpeedBoost)
}

if(counter%25=0){
instance_create_depth(room_width/2,room_height/2,1,obj_turtle)
}

if(counter%27=0){
instance_create_depth(room_width/2,room_height/2,1,obj_ghost)
}