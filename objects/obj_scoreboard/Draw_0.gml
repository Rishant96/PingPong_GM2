/// @description Insert description here
// You can write your code in this editor


if(room==rm_win){
draw_text((room_width/2)-250,(room_height/2)-100,"You win! Press R to restart game.")
}

if(room==rm_loss){
draw_text((room_width/2)-250,(room_height/2)-100,"You lost. :( Press R to restart game.")
}

else if(room==rm_game){
draw_text((room_width/2)-60,(room_height/2)-60,"cpuScore:"+string(obj_client.cpuScore))
draw_text((room_width/2)-60,(room_height/2)-100,"playerScore:"+string(obj_client.plrScore))
}