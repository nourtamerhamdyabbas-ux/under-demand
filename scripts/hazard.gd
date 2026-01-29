extends Area2D

@export var move_distance: float = 333.0
@export var move_speed: float = 500.0
@export var horizontal: bool = true

var start_position: Vector2
var direction: int = 1


func _ready() -> void:
	start_position = global_position


func _physics_process(delta: float) -> void:
	var movement: float = move_speed * delta * float(direction)

	if horizontal:
		global_position.x += movement
		if abs(global_position.x - start_position.x) >= move_distance:
			direction *= -1
	else:
		global_position.y += movement
		if abs(global_position.y - start_position.y) >= move_distance:
			direction *= -1
