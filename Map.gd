extends Node2D

onready var TravelPanel = $Travel
onready var Tbutton = $Travel/Button
onready var Ttext = $Travel/Label
onready var tween = $Tween

var inside: bool = false
var abajo: bool = false
var speed = 100
var vel = Vector2(250, 95)
var velb = Vector2(250, -170)
var currentLocation = 'Chile'

func _ready() -> void:
	Ttext.text = currentLocation



func _on_Button3_pressed() -> void:
	if abajo == false:
		abajo = true
		tween.interpolate_property(self, "position", velb, vel, 0.2,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		tween.start()
		Tbutton.visible = true

	elif abajo == true:
#		self.translate(velb)
		tween.interpolate_property(self, "position", vel, velb, 0.2,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		tween.start()
		abajo = false
		Tbutton.visible = false
