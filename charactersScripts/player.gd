extends CharacterBody2D

const move := 2.1

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if Input.is_action_just_pressed("d"):
		velocity.y = 0
		if Global.test ==1:
			position.x += move
			Global.test = 0
			
		
	elif Input.is_action_just_pressed("a"):
		velocity.y =0 
		if Global.test ==1:
			position.x -= move
			Global.test = 0
	elif Input.is_action_just_pressed("s"):
		if Global.test ==1:
			position.y += move
			Global.test = 0
		velocity.x =0 
	elif Input.is_action_just_pressed("w"):
		if Global.test ==1:
			position.y -= move
			Global.test = 0
		velocity.x =0 

	move_and_slide()
