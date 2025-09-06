extends Area2D
@export var nodown = false
@export var noleft = false
@export var noright = false
@export var noup = false



func _on_area_entered(area):
	if area.name == "noleft":
		noleft = true
	if area.name == "noright":
		noright = true
	if area.name == "nodown":
		nodown = true
	if area.name == "noup":
		noup = true
	pass


func _on_area_exited(area):
	if area.name == "noleft":
		noleft = false
	if area.name == "noright":
		noright = false
	if area.name == "nodown":
		nodown = false
	if area.name == "noup":
		noup = false
	pass
