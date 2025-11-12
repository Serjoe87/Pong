extends CanvasLayer

var ScorePlayer1
var ScorePlayer2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ScorePlayer1 = 0
	ScorePlayer2 = 0
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_ball_score_player_1() -> void:
	ScorePlayer1 += 1
	$ScoreP1.text = str(ScorePlayer1)

func _on_ball_score_player_2() -> void:
	ScorePlayer2 += 1
	$ScoreP2.text = str(ScorePlayer2)
