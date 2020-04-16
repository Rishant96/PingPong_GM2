/// @description 
// You can write your code in this editor
if(instance_exists(obj_puck)){
if(x!=obj_puck.x){
	move_towards_point(obj_puck.x,y,obj_paddle_h.walking_speed)
}}