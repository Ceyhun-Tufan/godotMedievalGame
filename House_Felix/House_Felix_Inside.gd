extends Node2D



func _ready():
	pass 



func _on_House_Felix_Leave_body_entered(body):
	get_tree().change_scene("res://mainscene.tscn")


func _on_House_Felix_Leave_body_exited(body):
	pass 
