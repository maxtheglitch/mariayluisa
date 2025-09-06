extends Node2D

@onready var heart_area_2dm = $heartArea2DM
@onready var heart_area_2dl = $heartArea2DL



func _process(delta):
	if heart_area_2dm.heartCount == 1 and heart_area_2dl.heartCount == 1 :
		get_tree().change_scene_to_file("res://lvl_4_screen.tscn")
