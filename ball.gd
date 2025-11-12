extends Area2D

	#if Input.is_action_pressed("Action"):

signal ScorePlayer1
signal ScorePlayer2

var velocity = Vector2.ZERO
var speed = 1000
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocity.x = randf()
	velocity.y = randf()
	#velocity.x = 0.1
	#velocity.y = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity = velocity.normalized() * speed
	position += velocity * delta

func _on_body_entered(body):
	if body.is_in_group("LevelCollision"):
		velocity.y = velocity.y * -1
	elif body.is_in_group("PaddleCollision"):
		velocity.x = velocity.x * -1
	elif body.is_in_group("ScorePlayer1"):
		ScorePlayer1.emit()
		position.x = 512
		position.y = 384
		velocity.x = randf()
		velocity.y = randf()
	elif body.is_in_group("ScorePlayer2"):
		ScorePlayer2.emit()
		position.x = 512
		position.y = 384
		velocity.x = randf()
		velocity.y = randf()
