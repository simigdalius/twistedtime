extends CharacterBody2D


const move = 2
var loop =true


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("mesa")
	if body.is_in_group("player"):
		print(Global.test)
		while (loop):
			position.x = 0
			if Global.test == 0:
				loop=false
		
		if Global.test == 0:
			print("timh")
			position.x -= move
			Global.test =1
