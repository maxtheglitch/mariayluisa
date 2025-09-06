extends Area2D
@export var nodown = false
@export var noleft = false
@export var noright = false
@export var noup = false



func _on_area_entered(area):
	if area.name == "noleft" or area.name == "leftWall":
		noleft = true
	if area.name == "noright" or area.name == "rightWall":
		noright = true
	if area.name == "nodown" or area.name == "downWall":
		nodown = true
	if area.name == "noup" or area.name == "upWall":
		noup = true
	pass


func _on_area_exited(area):
	if area.name == "noleft" or area.name == "leftWall":
		noleft = false
	if area.name == "noright" or area.name == "rightWall":
		noright = false
	if area.name == "nodown" or area.name == "downWall":
		nodown = false
	if area.name == "noup" or area.name == "downWall":
		noup = false
	pass
