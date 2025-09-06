extends Area2D
@onready var maria = $".."
@export var is_luisa_up = false
func _process(delta):
	
	pass
	
func _on_body_entered(body):
	if body.name == "luisa":
		is_luisa_up = true




func _on_body_exited(body):
	if body.name == "luisa":
		is_luisa_up = false

	
