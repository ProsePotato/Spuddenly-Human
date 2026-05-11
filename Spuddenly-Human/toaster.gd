extends Area2D

var plugged_in := false

func interact():
	var dialogue_box = get_tree().get_first_node_in_group("dialogue_box")

	if plugged_in:
		_show(dialogue_box, "The toaster glows with confidence. Humanity calls this breakfast.", "Potato thought")
		var room = get_tree().current_scene

		if room and room.has_method("learn_frustration"):
			room.learn_frustration()
		return

	_show(dialogue_box, "The potato examines the toaster. It is not plugged in.", "Potato thought")

func _show(dialogue_box, message: String, speaker: String):
	if dialogue_box:
		dialogue_box.show_message(message, speaker)
	else:
		print(message)
