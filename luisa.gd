extends CharacterBody2D

@export var canright = true
@export var canleft = true
@export var candown = true
@export var canup = true
@onready var maria = $"../maria"
@export var canMariaDown : bool
@export var isMariaDown : bool
@export var canMariaUp : bool
@export var isMariaUp : bool
@onready var up = $up
@onready var down = $down
@onready var right = $right
@export var isMariaRight : bool
@onready var centerl = $centerl


func _process(delta: float) -> void:
	canMariaDown = maria.candown
	isMariaDown = down.is_maria_down
	canMariaUp = maria.canup
	isMariaUp = up.is_maria_up
	isMariaRight = right.is_maria_right
	if Input.is_action_just_pressed("ui_right") and canleft and !centerl.noleft:
		position.x-=10
	if Input.is_action_just_pressed("ui_left") and canright and !centerl.noright:
		position.x+=10
	if Input.is_action_just_pressed("ui_down") and candown and !centerl.nodown:
		if !isMariaDown:
			position.y+=10
		if isMariaDown and canMariaDown:
			position.y+=10
		if isMariaDown and !canMariaDown:
			pass
	if Input.is_action_just_pressed("ui_up") and canup and !centerl.noup:
		if !isMariaUp:
			position.y-=10
		if isMariaUp and canMariaUp:
			position.y-=10
		if isMariaUp and !canMariaUp:
			pass
	
