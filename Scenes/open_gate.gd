extends Area2D

func _on_body_entered(body: Node2D) -> void:
	print(Global.keys_collected)
	if Global.keys_collected >= 1:
		if body is CharacterBody2D:
			Global.keys_collected -= 1
			get_tree().current_scene.queue_free()
