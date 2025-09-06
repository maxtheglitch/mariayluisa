extends Area2D
@export var mariaIsUp = false
@export var boxcantmovedown = false

func _on_body_entered(body):
	if body.name == "maria":
		mariaIsUp = true
		if boxcantmovedown:
			body.canleft = false

func _on_body_exited(body):
	if body.name == "maria":
		mariaIsUp = false
		if boxcantmovedown:
			body.candown = true
