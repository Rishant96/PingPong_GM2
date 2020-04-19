/// @description Insert description here
// You can write your code in this editor

var sp1 = instance_create_layer(0, 0, "Instances", obj_special_1);

for (var s=0; s < ds_list_size(sockets); s++) {
	var so = ds_list_find_value(sockets, s)
	SendRemoteEntity(so, CMD_X, sp1.id, sp1.x)
	SendRemoteEntity(so, CMD_Y, sp1.id, sp1.y)
	SendRemoteEntity(so, CMD_NAME, sp1.id, sp1.name)
	SendRemoteEntity(so, CMD_SPRITE, sp1.id, sp1.sprite_index)
}

alarm[0] = 300