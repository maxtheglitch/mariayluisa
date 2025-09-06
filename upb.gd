extends Area2D
@export var mariaIsUp = false
@export var boxcantmovedown = false

func _on_body_entered(body):
	if body.name == "maria":
		mariaIsUp = true
		if boxcantmovedown:
			body.candown = false

func _on_body_exited(body):
	if body.name == "maria":
		mariaIsUp = false
		if boxcantmovedown:
			body.candown = true


func _on_downb_area_entered(area):
	if area.name == "nodown":
		boxcantmovedown = true
	pass # Replace with function body.


func _on_downb_area_exited(area):
	if area.name == "nodown":
		boxcantmovedown = false
	pass # Replace with function body.
