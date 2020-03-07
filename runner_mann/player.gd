extends KinematicBody2D

var stamina = 100
var velocity = Vector2()
var speed = 300
var gravity = 9.8
var friction = 0.90
var stamina_loss = -1

func _physics_process(delta):
	
	
	
	if Input.is_action_pressed("running") and stamina > 0:
		speed = 500
		stamina += stamina_loss
	else:
		speed = 300
		stamina += - stamina_loss
	
	
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	
	if Input.is_action_pressed("ui_up") and is_on_floor() == true:
		velocity.y = -speed
	else:
		if is_on_floor():
			velocity.y = 0
	
	velocity.x = velocity.x * friction
	velocity.y += gravity
	if global_position.y > 1000:
		get_tree().reload_current_scene()
	
	move_and_slide(velocity,Vector2(0,-1))
