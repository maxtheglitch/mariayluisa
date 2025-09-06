extends Area2D

@export var mariaIsUp = false

func _on_body_entered(body):
	if body.name == "maria":
		mariaIsUp = true

func _on_body_exited(body):
	if body.name == "maria":
		mariaIsUp = false
