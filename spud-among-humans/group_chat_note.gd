extends Area2D

var inspected := false

func interact():
	var dialogue_box = get_tree().get_first_node_in_group("dialogue_box")
	var room = get_tree().current_scene

	if not inspected:
		inspected = true
		_show(dialogue_box, "A notification preview reads: 'WHO IS PROFESSOR GRIMSBY?' The room holds its breath, which is impressive for furniture.", "Potato thought")

		if room and room.has_method("mark_note_seen"):
			room.mark_note_seen()
		return

	_show(dialogue_box, "The group chat has become a public square for private disaster. Humans invented this on purpose.", "Potato thought")

func _show(dialogue_box, message: String, speaker: String):
	if dialogue_box:
		dialogue_box.show_message(message, speaker)
	else:
		print(message)
