extends KinematicBody2D
var velocidade = Vector2.ZERO
var move_speed = 150


func _physics_process(delta):
	var move_directionx = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	var move_directiony = int(Input.is_action_pressed("move_down")) - int(Input.is_action_pressed("move_up"))
	
	
	velocidade.x = move_speed * move_directionx
	velocidade.y = move_speed * move_directiony
	move_and_slide(velocidade)
