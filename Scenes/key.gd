extends Area2D



func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		Global.keys_collected += 1
		%Game_Manager.change_count()
		queue_free()
	
