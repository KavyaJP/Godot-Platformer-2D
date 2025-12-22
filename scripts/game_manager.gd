extends Node

var score: int = 0

@onready var score_label = $ScoreLabel

func add_point():
	score += 1
	print("Score: %d" % score)
	score_label.text = "Congratulations! You collected %d coins!" % score