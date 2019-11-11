extends Node2D

func _ready():
	pass

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/Game.tscn")

func set_score(score):
	$Label.text = "Your score was " + str(score)