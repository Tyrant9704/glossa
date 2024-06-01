extends Node

var words_lang 

var can_vibrate: bool = true


func _ready():
	save_file.load_game()
	
	words_lang = save_file.data['language']
		
	

	


