extends Area2D
@export var mariaIsLeft = false
@export var boxcantmoveRight = false

func _on_body_entered(body):
	if body.name == "maria":
		mariaIsLeft = true
		if boxcantmoveRight:
			body.canright = false



func _on_body_exited(body):
	if body.name == "maria":
		mariaIsLeft = false
		if boxcantmoveRight:
			body.canright = true

func _on_rightb_area_entered(area):
	if area.name == "noright":
		boxcantmoveRight = true
	pass # Replace with function body.


func _on_rightb_area_exited(area):
	if area.name == "noright":
		boxcantmoveRight = false
	pass # Replace with function body.
