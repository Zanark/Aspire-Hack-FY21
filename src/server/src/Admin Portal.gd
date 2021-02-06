extends Node2D


func _ready():
	get_tree().connect("network_peer_connected", self, "player_connected")


func _on_ButtonHost_pressed():
	var net = NetworkedMultiplayerENet.new()
	net.create_server(6969, 10)
	get_tree().set_network_peer(net)
	print("Hosting......")


func player_connected(id):
	print(id + "Joined")

