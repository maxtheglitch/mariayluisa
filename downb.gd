extends Area2D
@export var mariaIsDown = false
@export var boxcantmoveup = false

func _on_body_entered(body):
	if body.name == "maria":
		mariaIsDown = true
		if boxcantmoveup:
			body.canup = false

func _on_body_exited(body):
	if body.name == "maria":
		mariaIsDown = false
		if boxcantmoveup:
			body.canup = true


func _on_upb_area_entered(area):
	if area.name == "noup":
		boxcantmoveup = true
	pass # Replace with function body.


func _on_upb_area_exited(area):
	if area.name == "noup":
		boxcantmoveup = false
	pass # Replace with function body.
