extends Area2D
@export var is_luisa_area_atright = false


func _on_body_entered(body):
	if body.name == "luisa":
		body.canleft = false
		

func _on_body_exited(body):
	if body.name == "luisa":
		body.canleft = true
	


func _on_area_entered(area):
	if area.name == "left":
		is_luisa_area_atright = true
	pass # Replace with function body.


func _on_area_exited(area):
	if area.name == "left":
		is_luisa_area_atright = false
	pass # Replace with function body.
