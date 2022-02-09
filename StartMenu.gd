#Start Menu
extends Control


#Gets signal from button Start
func _on_StartGameButton_pressed():
	get_tree().change_scene("res://mainscene.tscn") #open main scene
	

#Gets signal from button Quit
func _on_QuitGameButton_pressed():
	get_tree().quit()#quit


func _on_CreditsButton_pressed():
	get_tree().change_scene("res://CreditsScene.tscn")
