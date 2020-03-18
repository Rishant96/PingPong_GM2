#macro PORT		56560
#macro MAX_CLIENTS	4

server = network_create_server(network_socket_tcp, PORT, MAX_CLIENTS)