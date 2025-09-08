extends Node2D
@onready var music: Node2D = $"../Music"
@onready var move_sfx: AudioStreamPlayer2D = $move_sfx

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_down") or  Input.is_action_just_pressed("ui_up") or  Input.is_action_just_pressed("ui_left") or  Input.is_action_just_pressed("ui_right"):
		music.await_ch2(move_sfx)
		pass
	pass
