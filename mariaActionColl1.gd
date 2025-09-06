extends Area2D
@onready var maria: CharacterBody2D = $"../.."




func _on_body_entered(body):
	if body.name == "luisa":
		maria.pospten = false
		


func _on_body_exited(body):
	if body.name == "luisa":
		maria.pospten = true
		
