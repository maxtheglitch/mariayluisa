extends Area2D
@export var is_luisa_area_atleft = false
@export var canBoxMoveLeft = false

func _on_body_entered(body):
	if body.name == "luisa":
		body.canright = false

		
func _on_body_exited(body):
	if body.name == "luisa":
		body.canright = true



func _on_area_entered(area):
	if area.name =="right":
		is_luisa_area_atleft = true

	pass # Replace with function body.
	



func _on_area_exited(area):
	if area.name =="right":
		is_luisa_area_atleft = false

		
	pass # Replace with function body.
