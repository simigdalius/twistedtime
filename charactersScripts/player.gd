extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var hp=100
const move := 2.1

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if Input.is_action_just_pressed("d"):
		velocity.y = 0
		#position.x += move
		
		if Global.test ==1:
			position.x += move
			Global.test = 0
			
		
	elif Input.is_action_just_pressed("a"):
		velocity.y =0 
		position.x -= move
	elif Input.is_action_just_pressed("s"):
		position.y += move
		velocity.x =0 
	elif Input.is_action_just_pressed("w"):
		position.y -= move
		velocity.x =0 

	move_and_slide()
