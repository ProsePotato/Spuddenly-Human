extends Area2D

var used := false

func interact():
	var dialogue_box = get_tree().get_first_node_in_group("dialogue_box")
	var toaster = get_tree().get_first_node_in_group("toaster")

	if used:
		_show(dialogue_box, "The plug is already doing its tiny job.", "Potato thought")
		return

	used = true

	if toaster:
		toaster.plugged_in = true

	_show(dialogue_box, "The potato plugs it in. A machine has been granted purpose.", "Potato thought")

func _show(dialogue_box, message: String, speaker: String):
	if dialogue_box:
		dialogue_box.show_message(message, speaker)
	else:
		print(message)
