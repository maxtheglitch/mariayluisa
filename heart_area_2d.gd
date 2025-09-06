extends Area2D

@export var heartCount = 0

	
func _on_body_entered(body):
	if body is CharacterBody2D:
		heartCount+=1




func _on_body_exited(body):
	if body is CharacterBody2D:
		heartCount-=1
	
