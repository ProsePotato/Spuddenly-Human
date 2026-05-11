extends Area2D

@export var speaker := "Potato thought"
@export_multiline var message := ""

func interact():
	var dialogue_box = get_tree().get_first_node_in_group("dialogue_box")

	if dialogue_box:
		dialogue_box.show_message(message, speaker)
	else:
		print(message)
