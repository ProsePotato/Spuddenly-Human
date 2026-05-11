extends CharacterBody2D

@export var speed := 200.0
@export var interact_distance := 80.0

func _physics_process(_delta):
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed
	move_and_slide()

func _process(_delta):
	if Input.is_action_just_pressed("interact"):
		var dialogue_box = get_tree().get_first_node_in_group("dialogue_box")

		if dialogue_box and dialogue_box.is_showing():
			dialogue_box.hide_message()
			return

		try_interact()

func try_interact():
	var interactables = get_tree().get_nodes_in_group("interactable")

	for item in interactables:
		if global_position.distance_to(item.global_position) <= interact_distance:
			if item.has_method("interact"):
				item.interact()
				return

	var dialogue_box = get_tree().get_first_node_in_group("dialogue_box")

	if dialogue_box:
		dialogue_box.show_message("Nothing interesting nearby.", "Potato thought")
	else:
		print("Nothing nearby")
