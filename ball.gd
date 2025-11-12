extends Area2D

	#if Input.is_action_pressed("Action"):

var velocity = Vector2.ZERO
var speed = 500
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocity.x = randf()
	velocity.y = randf()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity = velocity.normalized() * speed
	position += velocity * delta

func _on_body_entered(_body):
	print("treffer")
	velocity.y = velocity.y * -1
