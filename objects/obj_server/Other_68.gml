var event_id = async_load[? "id"]

if server == event_id {
	var type = async_load[? "type"]
	var sock = async_load[? "socket"]
	
	// client connecting
	if (type == network_type_connect) {
		// create player, add socket to list
		ds_list_add(sockets, sock)
		pos_x = room_width/2
		pos_y = room_height-32
		if ds_list_size(sockets) == 2 {
			pos_y = 0
		}
		var p = instance_create_layer(pos_x, pos_y, "Instances", obj_paddle)
		ds_map_add(clients, sock, p)
		
		for (var i=0; i < instance_number(obj_paddle); i++) {
			var pl = instance_find(obj_paddle, i)
			SendRemoteEntity(sock, CMD_X, pl.id, pl.x)
			SendRemoteEntity(sock, CMD_Y, pl.id, pl.y)
			SendRemoteEntity(sock, CMD_NAME, pl.id, pl.name)
			SendRemoteEntity(sock, CMD_SPRITE, pl.id, pl.sprite_index)
		}
		
		for (var i=0; i < instance_number(obj_puck); i++) {
			var pk = instance_find(obj_puck, i)
			SendRemoteEntity(sock, CMD_X, pk.id, pk.x)
			SendRemoteEntity(sock, CMD_Y, pk.id, pk.y)
			SendRemoteEntity(sock, CMD_NAME, pk.id, pl.name)
			SendRemoteEntity(sock, CMD_SPRITE, pk.id, pk.sprite_index)
		}
	}
	
	// client disconnecting
	if (type == network_type_disconnect) {
		var p = clients[? sock]
		if instance_exists(p) {
			with (p) {
				instance_destroy()	
			}
		}
		
		ds_list_delete(sockets, ds_list_find_index(sockets, sock))
		ds_map_delete(clients, sock)
	}
}
else if event_id != global.socket {
	var sock = async_load[? "id"]
	var buff = async_load[? "buffer"]
	
	buffer_seek(buff, buffer_seek_start, 0)
	var cmd = buffer_read(buff, buffer_u8)
	
	var p = clients[? sock]
	switch (cmd) {
		case PACKET_KEY:
			with(p) {
				var key = buffer_read(buff, buffer_u8)
				var state = buffer_read(buff, buffer_u8)
				
				keys[key] = state
			}
		break
		
		case PACKET_NAME:
			p.name = buffer_read(buff, buffer_string)
			
			for (var s=0; s < ds_list_size(sockets); s++) {
				var so = ds_list_find_value(sockets, s)
				SendRemoteEntity(so, CMD_NAME, p.id, p.name)
			}
		break
	}
}