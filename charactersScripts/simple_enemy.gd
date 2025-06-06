extends CharacterBody2D


const move = 2.1
var z=0
func _ready() -> void:
	Global.test=1

func _physics_process(delta: float) -> void:
	if Global.test != 1:
		on_player_moved()

func on_player_moved():
	position.x -= move
	Global.test = 1
