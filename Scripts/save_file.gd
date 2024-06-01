extends Node
class_name saver


var save_file = 'user://saves/save.json'
var dir = 'user://saves'

var data = {}

var language = global.words_lang

var str_dict = {}

func _ready():
	load_game()
	
func save_game():
	
	var file = FileAccess.open(save_file, FileAccess.WRITE)
	var json_data = JSON.stringify(data)
	file.store_line(json_data)
	file.close()

	
func load_game():
	if not DirAccess.dir_exists_absolute(dir):
		DirAccess.make_dir_recursive_absolute(dir)
	if not FileAccess.file_exists(save_file):
		data = {
		'language': language
		}
		save_game()
	if FileAccess.file_exists(save_file):
		var file = FileAccess.open(save_file, FileAccess.READ)
		var text = file.get_as_text(true)
		var j = JSON.new()
		file.close()
		data = j.parse_string(text)
