extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_DoorWay_body_entered(body):
	get_tree().change_scene("res://House_Felix/House_Felix_Inside.tscn")


func _on_DoorWay_body_exited(body):
	pass	
