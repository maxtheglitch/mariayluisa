extends Node2D
@onready var sq_1ch: AudioStreamPlayer2D = $Sq1CH
@onready var sq_2ch: AudioStreamPlayer2D = $Sq2CH
@onready var wv_ch: AudioStreamPlayer2D = $WvCH
@onready var nois_ch: AudioStreamPlayer2D = $NoisCh
@onready var ex_ch: AudioStreamPlayer2D = $ExCH

func stop_music():
	sq_1ch.stop()
	sq_2ch.stop()
	wv_ch.stop()
	nois_ch.stop()
	ex_ch.stop()
	pass
