extends Node2D

func _ready():
	pass 


func _on_Home_Felix_Area2D_body_entered(body):
	body.house = self


func _on_Home_Felix_Area2D_body_exited(body):
	body.house = null
	
func enter():
	get_tree().change_scene("res://House_Felix/House_Felix_Inside.tscn")
