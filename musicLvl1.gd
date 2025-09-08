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

func await_ch1(sfx : AudioStreamPlayer2D):
	AudioServer.set_bus_mute(1,true)
	sfx.play()
	await sfx.finished
	AudioServer.set_bus_mute(1,false)

func await_ch2(sfx : AudioStreamPlayer2D):
	AudioServer.set_bus_mute(2,true)
	sfx.play()
	await sfx.finished
	AudioServer.set_bus_mute(2,false)
	
func await_ch3(sfx : AudioStreamPlayer2D):
	AudioServer.set_bus_mute(3,true)
	sfx.play()
	await sfx.finished
	AudioServer.set_bus_mute(3,false)

func await_ch4(sfx : AudioStreamPlayer2D):
	AudioServer.set_bus_mute(4,true)
	sfx.play()
	await sfx.finished
	AudioServer.set_bus_mute(4,false)
	
	
	
