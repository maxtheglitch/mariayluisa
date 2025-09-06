extends Area2D

func _on_body_entered(body):
	if body is CharacterBody2D:
		body.canleft = false
		
	pass # Replace with function body.


func _on_body_exited(body):
	if body is CharacterBody2D:
		body.canleft = true
	pass # Replace with function body.
