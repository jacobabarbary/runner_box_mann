extends Sprite

func _physics_process(delta):
	
	var stamina = get_parent().stamina
	scale.x = stamina / 100.5
	
	print(stamina)
