extends Area2D

func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	queue_free()
	if body.name == "Player":
		print("TROPHY COLLECTED")
		get_tree().current_scene.show_win_message()
		queue_free()
