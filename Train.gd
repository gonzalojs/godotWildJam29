extends Area2D

const SPEED: int = 200
var velocity: = Vector2.ZERO
var angled = Vector2(500, 500)
var inTrain: bool = false

func _process(delta: float) -> void:
	if inTrain == true:
		_moving(delta)

func _moving(delta: float) -> void:
	var angle = get_angle_to(angled)
	velocity.x = cos(angle) * 4
	velocity.y = sin(angle)
	global_position += velocity * SPEED * delta

func _on_area_entered(area: Area2D) -> void:
	print('entered')


func _on_body_entered(body: Node) -> void:
	inTrain = true
	
