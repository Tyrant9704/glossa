extends Control

func _ready():
	$language_menu.hide()
	
	TranslationServer.set_locale(save_file.data['language'])
	lang_change()


func _on_sound_toggled(button_pressed):
	var audio = AudioServer.get_bus_index('Master')
	
	if button_pressed:
		AudioServer.set_bus_mute(audio, true)
		print('muted')
	else:
		AudioServer.set_bus_mute(audio, false)
	


func _on_start_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_options_pressed():
	$language_menu.show()


func _on_exit_pressed():
	get_tree().quit()


func _on_close_menu_pressed():
	$language_menu.hide()


func _on_language_select_pressed(lang: String):
	save_file.data['language'] = lang
	global.words_lang = lang

	save_file.save_game()
	
	TranslationServer.set_locale(lang)
	lang_change()

	
func lang_change():
	$language_menu/VBoxContainer/Label.text = tr('select_lang')
	$button_container/start.text = tr('start_btn')
	$button_container/options.text = tr('options_btn')
	$button_container/stats.text = tr('stats_btn')
	

func _on_vibrations_toggled(button_pressed):
	if button_pressed:
		global.can_vibrate = true
	else:
		global.can_vibrate = false


func _on_credits_pressed():
	get_tree().change_scene_to_file("res://Scenes/about_scene.tscn")
