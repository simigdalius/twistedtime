extends CharacterBody2D


const move = 2
var i=0
var z=100


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("mesa")
	if body.is_in_group("player"):
		print(Global.test)
		for i in z:
			position.x = 0
			i=0
			if Global.test == 0:
				i=z
		
		if Global.test == 0:
			print("timh")
			position.x -= move
			Global.test =1
