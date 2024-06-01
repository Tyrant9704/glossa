extends Button

func _pressed():
	if global.can_vibrate:
		Input.vibrate_handheld(80)
