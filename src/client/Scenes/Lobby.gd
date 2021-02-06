extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ButtonJoin_pressed():
	var net = NetworkedMultiplayerENet.new() 
	net.create_client("", 6969)
	get_tree().set_network_peer(net)
	print("Joining.....")
