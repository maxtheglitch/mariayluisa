extends Node2D
@onready var presstartsfx: AudioStreamPlayer2D = $SFX/AudioStreamPlayer2D
@onready var music: Node2D = $Music

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		music.stop_music()
		presstartsfx.play()
		await presstartsfx.finished
		get_tree().change_scene_to_file("res://lvl_1_screen.tscn")
		
