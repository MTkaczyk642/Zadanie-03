extends Node2D
var hidden_number = 1


func _ready():
	randomize()
	hidden_number = randi() % 100 + 1





func _on_Button_pressed():
	var player_guess = int(get_node("Panel/LineEdit").text)
	if player_guess == hidden_number:
		get_node("Panel/LabelResult").text = "You guessed my number!"
	if player_guess > hidden_number:
		get_node("Panel/LabelResult").text = "Your number is too high."
	if player_guess < hidden_number:
		get_node("Panel/LabelResult").text = "Your number is too low."
