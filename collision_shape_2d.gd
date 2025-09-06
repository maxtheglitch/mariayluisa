extends CollisionShape2D



func _on_area_2d_body_entered(body: CharacterBody2D) -> void:
	if body.name == "maria":
		body.position.x=position.x+45
