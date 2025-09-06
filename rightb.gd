extends Area2D
@export var mariaIsRight = false
@export var boxcantmoveleft = false

func _on_body_entered(body):
	if body.name == "maria":
		mariaIsRight = true
		if boxcantmoveleft:
			body.canleft = false
		
func _on_body_exited(body):
	if body.name == "maria":
		mariaIsRight = false
		if boxcantmoveleft:
			body.canleft = true




func _on_leftb_area_entered(area):
	if area.name == "noleft":
		boxcantmoveleft = true
	pass # Replace with function body.


func _on_leftb_area_exited(area):
	if area.name == "noleft":
		boxcantmoveleft = false
	pass # Replace with function body.
