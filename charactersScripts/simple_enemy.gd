extends CharacterBody2D


const move = 2.1
var z=0
var n=0
func _ready() -> void:
	Global.test=1

func _physics_process(delta: float) -> void:
	if Global.test != 1:
		on_player_moved()

func on_player_moved():
	var player = get_tree().get_first_node_in_group("player")
	Global.test = 1
	if n<5:
		position.x -= move
		n+=1
	Global.test = 1


func _on_death_area_body_entered2(body: Node2D) -> void:
	if body.is_in_group("player"):
		get_tree().change_scene_to_file("res://ScenesUI/control.tscn")



func _on_killzone_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		$CollisionShape2D/Polygon2D.queue_free()
		$deathArea.queue_free()
