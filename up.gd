extends Area2D
@onready var luisa = $".."
@export var is_maria_up = false


func _on_body_entered(body):
	if body.name == "maria":
		is_maria_up = true




func _on_body_exited(body):
	if body.name == "maria":
		is_maria_up = false

	
