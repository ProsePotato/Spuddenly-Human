extends Node2D

var learned_frustration := false

func learn_frustration():
	if learned_frustration:
		return

	learned_frustration = true
	var dialogue_box = get_tree().get_first_node_in_group("dialogue_box")
	var exit_prompt = get_node_or_null("ExitPrompt")

	if exit_prompt:
		exit_prompt.visible = true

	if dialogue_box:
		dialogue_box.show_message("Emotion learned: Frustration. Humans become storm clouds when small machines refuse simple duties.", "Emotion learned")
		dialogue_box.show_message("Kitchen diagnosis complete. Next research subject: whatever social disaster is leaking through that door.", "Potato thought")
	else:
		print("Emotion learned: Frustration.")
