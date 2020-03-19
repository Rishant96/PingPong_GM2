var event_id = async_load[? "id"]

if server == event_id {
	var type = async_load[? "type"]
	var sock = async_load[? "sock"]
	
	// client connecting
	if (type == network_type_connect) {
		// create player, add socket to list
		ds_list_add(sockets, sock)
		
		var p = instance_create_layer(room_width/2, 0, "Instances", obj_paddle)
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