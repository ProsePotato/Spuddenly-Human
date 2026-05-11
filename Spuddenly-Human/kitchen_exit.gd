extends Area2D

func interact():
	var dialogue_box = get_tree().get_first_node_in_group("dialogue_box")
	var room = get_tree().current_scene
	var lesson_complete = room and room.get("learned_frustration") == true

	if lesson_complete:
		get_tree().change_scene_to_file("res://living_room.tscn")
	else:
		_show(dialogue_box, "The door waits. The potato has not finished diagnosing the breakfast failure theater.", "Kitchen exit")

func _show(dialogue_box, message: String, speaker: String):
	if dialogue_box:
		dialogue_box.show_message(message, speaker)
	else:
		print(message)
