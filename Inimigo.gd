extends KinematicBody2D
var velocidade = Vector2.ZERO
var move_speed = 100

var start_position : Vector2
var end_position : Vector2 = Vector2(150, 0)
var last_position : Vector2

enum{ PATROL, RETURN, CHASE }

var state: int = PATROL
var motion: Vector2
func _ready():
	start_position = position

func _process(delta):
	motion = move_and_slide(motion)
	global_position = Vector2(round(global_position.x), round(global_position.y))


func _patrol_process():
	if moving_right:
		motion.x = move_speed
	else:
		motion.x = - move_speed
		
	if global.position.x > start_position.x + end_position.x and moving_right:
		moving_right = false
func _chase():
	pass
func _return():
	pass
