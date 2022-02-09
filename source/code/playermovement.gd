extends KinematicBody2D

func _ready():
	print("Game Started") 

const MAX_SPEED = 50


var velocity
#To animate player movement
onready var animationPlayer = $AnimationPlayer # $ sign is to call node inside same scence
onready var animationTree = $AnimationTree
onready var animationState = animationTree.get("parameters/playback")
	

func _physics_process(delta): # delta is the time between frames. Like if you get 60 fps, its 1/60 second.
	var input_vel = Vector2.ZERO
	
	# vector2 is basicly an array which has x and y ( coordinate ) 
	
	input_vel.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left") #just gets if pressed or not
	input_vel.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vel = input_vel.normalized()
	
	#its for handling the cross walking stuff
	# when you cross walk you press 2 keys. program understands it as 1 + 1 speed but we dont want that.
	# so we use this
	
	if input_vel != Vector2.ZERO:
		animationTree.set("parameters/Idle/blend_position", input_vel) #for animations from AnimationTree
		animationTree.set("parameters/Run/blend_position", input_vel)
		animationState.travel("Run")
		velocity = input_vel
	else:
		animationState.travel("Idle")
		velocity = Vector2.ZERO
	
	move_and_slide(velocity * MAX_SPEED)
	#move and slide method is literally for sliding.	





func _on_HomeAlex_body_entered(body):
	get_tree().change_scene("res://HomeAlexInside.tscn")
