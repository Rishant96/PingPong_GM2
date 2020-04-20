for (var i=0; i < instance_number(obj_paddle_h); i++) {
	var pl = instance_find(obj_paddle_h, i)
	for (var s=0; s < ds_list_size(sockets); s++) {
		var so = ds_list_find_value(sockets, s)
		SendRemoteEntity(so, CMD_X, pl.id, pl.x)
		SendRemoteEntity(so, CMD_Y, pl.id, pl.y)
	}
}

for (var i=0; i < instance_number(obj_paddle_v); i++) {
	var pl = instance_find(obj_paddle_v, i)
	for (var s=0; s < ds_list_size(sockets); s++) {
		var so = ds_list_find_value(sockets, s)
		SendRemoteEntity(so, CMD_X, pl.id, pl.x)
		SendRemoteEntity(so, CMD_Y, pl.id, pl.y)
	}
}

if (!instance_exists(obj_puck)) {
	instance_create_layer(room_width/2, room_height/2, "Instances", obj_puck)
}

for (var i=0; i < instance_number(obj_puck); i++) {
	var pk = instance_find(obj_puck, i)
	for (var s=0; s < ds_list_size(sockets); s++) {
		var so = ds_list_find_value(sockets, s)
		SendRemoteEntity(so, CMD_X, pk.id, pk.x)
		SendRemoteEntity(so, CMD_Y, pk.id, pk.y)
	}
}
