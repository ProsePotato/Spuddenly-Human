extends Area2D

var inspected := false

func interact():
	var dialogue_box = get_tree().get_first_node_in_group("dialogue_box")
	var room = get_tree().current_scene

	if room and room.get("phone_seen") != true:
		_show(dialogue_box, "A blank card waits on the table, innocent and unburdened by context.", "Potato thought")
		return

	if not inspected:
		inspected = true
		_show(dialogue_box, "The potato drafts: 'Hello all. That declaration of affection was misfired. Please return to pretending I am mysterious and competent.'", "Potato thought")

		if room and room.has_method("mark_apology_found"):
			room.mark_apology_found()
		return

	_show(dialogue_box, "The apology draft remains tragically necessary.", "Potato thought")

func _show(dialogue_box, message: String, speaker: String):
	if dialogue_box:
		dialogue_box.show_message(message, speaker)
	else:
		print(message)
