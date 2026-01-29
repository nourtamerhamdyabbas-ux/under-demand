extends Node2D

@export var offset: Vector2 = Vector2(0, -60)

var score: int = 0


func _process(_delta: float) -> void:
	global_position = get_parent().global_position + offset
	$ScoreLabel.text = str(score)


func add_score(amount: int) -> void:
	score += amount
	print("SCORE UPDATED:", score)
