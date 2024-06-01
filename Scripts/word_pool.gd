extends Node

class_name WordPool

var words = []

func _ready():
	randomize()
	select_dictionary()

func select_dictionary():
	var lang = global.words_lang
	var array = load('res://Dictionaries/' + lang + '.gd').new()
	words = array.dictionary
	%Rows.start_game()
	

func get_random_word():
	return words.pick_random()


func check_word(word: String) -> bool:
	return words.has(word)
