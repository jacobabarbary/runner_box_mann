extends Area2D

func _physics_process(delta):
	
	position.x += 7


func _on_death_wall_body_entered(body):
	
	if body.name == "player":
		get_tree().reload_current_scene()
	
