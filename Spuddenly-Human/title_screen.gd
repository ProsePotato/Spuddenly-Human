extends Control

func _ready():
	$Menu/StartButton.grab_focus()

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://kitchen_room.tscn")

func _on_quit_button_pressed():
	get_tree().quit()
