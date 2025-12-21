extends Node2D

const SPEED = 30.0

var direction = 1 # 1 for right, -1 for left

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if direction == 1 and ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	elif direction == -1 and ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	position.x += direction * SPEED * delta
