extends Area2D


func _on_body_entered(body):
	if body.name == "maria":
		body.canright = false
		


func _on_body_exited(body):
	if body.name == "maria":
		body.canright = true
	
	pass # Replace with function body.
