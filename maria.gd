extends CharacterBody2D

@onready var move_sfx: AudioStreamPlayer2D = $"../SFX/move_sfx"
@export var canright = true
@export var canleft = true
@export var candown = true
@export var canup = true
@export var canLuisaDown : bool
@export var isLuisaDown : bool
@export var canLuisaUp : bool
@export var isLuisaUp : bool
@onready var luisa = $"../luisa"
@onready var downm = $downm
@onready var upm = $upm
@export var isLuisaRightCollLeft : bool
@onready var leftm = $leftm
@onready var rightm = $rightm
@onready var centerm = $centerm


func _process(delta: float) -> void:
	
	canLuisaDown = luisa.candown
	isLuisaDown = downm.is_luisa_down
	canLuisaUp = luisa.canup
	isLuisaUp = upm.is_luisa_up
	
	if Input.is_action_just_pressed("ui_right") and canright and !rightm.is_luisa_area_atright and !centerm.noright:
		position.x+=10
		canleft = true
		
	if Input.is_action_just_pressed("ui_left") and canleft and !leftm.is_luisa_area_atleft and !centerm.noleft:
		position.x-=10
		canright = true
	if Input.is_action_just_pressed("ui_down") and candown and !centerm.nodown:
		if !isLuisaDown:
			position.y+=10
			canup = true
		if isLuisaDown and canLuisaDown:
			position.y+=10
			canup = true
		if isLuisaDown and !canLuisaDown:
			pass
	if Input.is_action_just_pressed("ui_up") and canup and !centerm.noup:
		if !isLuisaUp:
			position.y-=10
			candown = true
		if isLuisaUp and canLuisaUp:
			position.y-=10
			candown = true
		if isLuisaUp and !canLuisaUp:
			pass
