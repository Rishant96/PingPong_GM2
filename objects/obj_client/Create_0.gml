socket = network_create_socket(network_socket_tcp)
global.socket = socket
buffer = buffer_create(16384, buffer_grow, 1)
connect = network_connect(socket, "127.0.0.1", PORT)

if (connect < 0) {
	show_message("Cannot reach the server")
	game_restart()
}


entities = ds_map_create()
SendName(global.name)
