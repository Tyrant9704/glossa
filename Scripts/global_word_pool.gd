extends Node


var words: Array

func get_random_word():
	return words.pick_random()

func check_word(word: String) -> bool:
	return words.has(word)

