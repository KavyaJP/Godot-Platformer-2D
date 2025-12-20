extends Area2D

@onready var timer = $Timer

func _ready():
	timer.process_mode = Node.PROCESS_MODE_ALWAYS

func _on_body_entered(_body: Node2D) -> void:
	print("Player entered kill zone!")
	get_tree().paused = true
	timer.start()

func _on_timer_timeout() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()
