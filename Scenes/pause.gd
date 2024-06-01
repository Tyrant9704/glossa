extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_yes_pressed():
	var word = %Rows.word_to_guess
	%ResultsUI.show()
	%ResultsUI.show_on_quit(word, false)
	%Rows.keyboard.hide()
	%ResultsUI.results_label.text = 'Do you want to try again?'


func _on_no_pressed():
	hide()
