extends CharacterBody2D

@export var canright = true
@export var canleft = true
@export var candown = true
@export var canup = true
@onready var rightb = $rightb
@onready var leftb = $leftb
@onready var upb = $upb
@onready var downb = $downb
@export var mariaCanright = true
@onready var maria = $"../maria"
@onready var centerb = $centerb
@export var noleft = false

func _process(delta):
	print(maria.canright)
	if rightb.mariaIsRight and canright:
		if Input.is_action_just_pressed("ui_right") and maria.canright:
			position.x+=10
		if Input.is_action_just_pressed("ui_left") and maria.canleft and !centerb.noleft:
			position.x-=10
	if leftb.mariaIsLeft and canleft:
		if Input.is_action_just_pressed("ui_left") and maria.canleft:
			position.x-=10
		if Input.is_action_just_pressed("ui_right") and maria.canright and !centerb.noright:
			position.x+=10
	if upb.mariaIsUp and Input.is_action_just_pressed("ui_up") and maria.canup:
		position.y+=10
	if downb.mariaIsDown and Input.is_action_just_pressed("ui_down") and maria.candown:
		position.y-=10
	
