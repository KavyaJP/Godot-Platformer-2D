extends Node

var score: int = 0

@onready var score_label = $ScoreLabel

func add_point():
	score += 1
	if(score == 10):
		score_label.text = "Congratulations!\nYou collected all 10 coins!"
	else:
		score_label.text = "Congratulations!\nYou collected %d coins!" % score