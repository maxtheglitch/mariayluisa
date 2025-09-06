extends Area2D

@export var mariaIsDown = false

func _on_body_entered(body):
	if body.name == "maria":
		mariaIsDown = true

func _on_body_exited(body):
	if body.name == "maria":
		mariaIsDown = false
