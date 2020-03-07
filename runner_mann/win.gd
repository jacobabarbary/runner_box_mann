extends Area2D





func _on_win_body_entered(body):
	
	if body.name == "player":
		get_node("Label").show()
		get_tree().change_scene("res://menu.tscn")
