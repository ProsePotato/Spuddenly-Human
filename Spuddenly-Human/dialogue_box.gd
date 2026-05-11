extends CanvasLayer

@onready var panel: Panel = $Panel
@onready var speaker_label: Label = $Panel/SpeakerLabel
@onready var label: Label = $Panel/Label

var queued_messages: Array[Dictionary] = []

func _ready():
	panel.visible = false

func show_message(message: String, speaker := "Potato thought"):
	if panel.visible:
		queued_messages.append({"message": message, "speaker": speaker})
		return

	_display_message(message, speaker)

func hide_message():
	if queued_messages.size() > 0:
		var next_message = queued_messages.pop_front()
		_display_message(next_message["message"], next_message["speaker"])
		return

	panel.visible = false

func is_showing() -> bool:
	return panel.visible

func _display_message(message: String, speaker: String):
	speaker_label.text = speaker
	label.text = message
	panel.visible = true
