var event_id = async_load[? "id"]

if server == event_id {
	var type = async_load[? "type"]
	var sock = async_load[? "socket"]
	
	// client connecting
	if (type == network_type_connect) {
		// create player, add socket to list
		ds_list_add(sockets, sock)
		 
		var p = instance_create_layer(room_width/2, room_height-32, "Instances", obj_paddle)
		ds_map_add(clients, sock, p)
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
	}
}