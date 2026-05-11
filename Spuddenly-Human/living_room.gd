extends Node2D

var learned_embarrassment := false
var phone_seen := false
var note_seen := false
var apology_found := false
var embarrassment_resolved := false

func _ready():
	var dialogue_box = get_tree().get_first_node_in_group("dialogue_box")

	if dialogue_box:
		dialogue_box.show_message("The potato enters the living room. Somewhere nearby, a human is preparing to make a private mistake public. Promising.", "Potato thought")

func mark_phone_seen():
	phone_seen = true
	var dialogue_box = get_tree().get_first_node_in_group("dialogue_box")

	if dialogue_box:
		dialogue_box.show_message("Diagnosis: a romantic message has escaped into communal airspace. Embarrassment levels rising.", "Potato thought")

func mark_note_seen():
	note_seen = true
	var dialogue_box = get_tree().get_first_node_in_group("dialogue_box")

	if dialogue_box:
		dialogue_box.show_message("New clue acquired: the disaster has witnesses. This greatly improves the embarrassment.", "Potato thought")

func mark_apology_found():
	apology_found = true
	var dialogue_box = get_tree().get_first_node_in_group("dialogue_box")

	if dialogue_box:
		dialogue_box.show_message("Tool obtained: emergency apology language. Humans survive by arranging words into thinner disasters.", "Potato thought")

func resolve_embarrassment():
	if embarrassment_resolved:
		return

	embarrassment_resolved = true
	learned_embarrassment = true
	var dialogue_box = get_tree().get_first_node_in_group("dialogue_box")

	if dialogue_box:
		dialogue_box.show_message("Emotion learned: Embarrassment. Humans fear exposure, especially when exposure arrives via rectangle.", "Emotion learned")
		dialogue_box.show_message("Living room stabilized. Next conclusion: humans should not be trusted unsupervised near send buttons.", "Potato thought")
