#macro PORT		56560
#macro MAX_CLIENTS	2

// packets
#macro PACKET_KEY   0

server = network_create_server(network_socket_tcp, PORT, MAX_CLIENTS)

clients = ds_map_create()
sockets = ds_list_create()