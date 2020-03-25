for (var i=0; i < instance_number(obj_paddle); i++) {
	var pl = instance_find(obj_paddle, i)
	for (var s=0; s < ds_list_size(sockets); s++) {
		var so = ds_list_find_value(sockets, s)
		SendRemoteEntity(so, CMD_X, pl.id, pl.x)
		SendRemoteEntity(so, CMD_Y, pl.id, pl.y)
	}
}