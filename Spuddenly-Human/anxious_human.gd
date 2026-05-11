extends Area2D

var helped := false

func interact():
	var dialogue_box = get_tree().get_first_node_in_group("dialogue_box")
	var room = get_tree().current_scene

	if helped:
		_show(dialogue_box, "The human has reached the weak, trembling stage of recovery. A classic post-message condition.", "Potato thought")
		return

	if room and room.get("apology_found") == true:
		helped = true
		_show(dialogue_box, "The potato presents the apology draft. The human copies it with the gratitude of a species rescued by root vegetable management.", "Potato thought")

		if room.has_method("resolve_embarrassment"):
			room.resolve_embarrassment()
		return

	if room and room.get("note_seen") == true:
		_show(dialogue_box, "The human whispers, 'I need words. Better words. Words that undo other words.' This species remains committed to language despite the evidence.", "Human")
	else:
		_show(dialogue_box, "The human is staring into the middle distance, where dignity goes to evaporate.", "Potato thought")

func _show(dialogue_box, message: String, speaker: String):
	if dialogue_box:
		dialogue_box.show_message(message, speaker)
	else:
		print(message)
