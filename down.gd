extends Area2D
@onready var luisa = $".."
@export var is_maria_down = false
func _process(delta):
	
	pass
	
func _on_body_entered(body):
	if body.name == "maria":
		is_maria_down = true
		




func _on_body_exited(body):
	if body.name == "maria":
		is_maria_down = false
