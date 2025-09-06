extends Area2D
@export var is_maria_right = false
func _on_body_entered(body):
	if body.name == "maria":
		body.canleft = false
		


func _on_body_exited(body):
	if body.name == "maria":
		body.canleft = true
	
	pass # Replace with function body.
