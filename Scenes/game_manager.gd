extends Node

@onready var key_tracker: Label = $CanvasLayer/Label

func change_count():
	key_tracker.text = "Keys: " + str(Global.keys_collected)
