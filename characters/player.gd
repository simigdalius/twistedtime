extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if Input.is_action_just_pressed("d"):
		velocity.x = SPEED
		velocity.y = 0
	elif Input.is_action_just_pressed("a"):
		velocity.x = -SPEED
		velocity.y =0 
	elif Input.is_action_just_pressed("s"):
		velocity.y = SPEED
		velocity.x =0 
	elif Input.is_action_just_pressed("w"):
		velocity.y = -SPEED
		velocity.x =0 

	move_and_slide()
