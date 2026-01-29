extends Node2D

@onready var win_label: Label = $UI/WinLabel

func _ready():
	win_label.visible = false

func show_win_message():
	print("WIN FUNCTION CALLED")
	win_label.visible = true
