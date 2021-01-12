extends Node2D

var inside: bool = false
var abajo: bool = false
var speed = 100
var vel = Vector2(250, 200)
var velb = Vector2(250, -170)
onready var tween = $Tween

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if inside == true and abajo == false:
			abajo = true
			tween.interpolate_property(self, "position", Vector2(250, -350), vel, 0.2,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
			)
			tween.start()
#			self.translate(vel)
		elif inside == true and abajo == true:
#			self.translate(velb)
			tween.interpolate_property(self, "position", vel, velb, 0.2,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
			)
			tween.start()
			abajo = false


func _on_Boton_mouse_entered() -> void:
	print(abajo)
	inside = true


func _on_Boton_mouse_exited() -> void:
	inside = false


func _on_Button3_pressed() -> void:
	if abajo == false:
		abajo = true
		tween.interpolate_property(self, "position", Vector2(250, -350), vel, 0.2,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		tween.start()
#		self.translate(vel)
	elif abajo == true:
#		self.translate(velb)
		tween.interpolate_property(self, "position", vel, velb, 0.2,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		tween.start()
		abajo = false
