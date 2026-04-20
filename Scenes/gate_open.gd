extends StaticBody2D

func _on_open_gate_body_entered(body: Node2D) -> void:
	if Global.keys_collected >= 1:
		if body is CharacterBody2D:
			Global.keys_collected -= 1
			%Game_Manager.change_count()
			queue_free()
