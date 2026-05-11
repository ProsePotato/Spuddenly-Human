extends Area2D

var inspected := false

func interact():
	var dialogue_box = get_tree().get_first_node_in_group("dialogue_box")
	var room = get_tree().current_scene

	if inspected:
		_show(dialogue_box, "The message still exists. A bold choice by technology.", "Potato thought")
		return

	inspected = true
	_show(dialogue_box, "The phone displays: 'Love you, Professor Grimsby.' Sent to: Apartment Group Chat.", "Phone")

	if room and room.has_method("mark_phone_seen"):
		room.mark_phone_seen()

func _show(dialogue_box, message: String, speaker: String):
	if dialogue_box:
		dialogue_box.show_message(message, speaker)
	else:
		print(message)
