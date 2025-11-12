extends CharacterBody2D

var speed = 500

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("Player1_up"):
		velocity.y = -1
	elif Input.is_action_pressed("Player1_down"):
		velocity.y = 1
	else:
		velocity.y = 0
	
	velocity = velocity.normalized() * speed
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, get_viewport_rect().size)
