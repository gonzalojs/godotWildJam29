extends Node2D

onready var TravelPanel = $Travel
onready var Tbutton = $Travel/Button
onready var Ttext = $Travel/Label
onready var tween = $Tween

onready var OttB = $Ottawa
onready var OttBCheck = $Ottawa/CheckBox
onready var MexB = $"Mexico City"
onready var MexBCheck = $"Mexico City/CheckBox"
onready var MiaB = $Miami
onready var MiaBCheck = $Miami/CheckBox
onready var StgB = $Santiago
onready var StgBCheck = $Santiago/CheckBox
onready var NyB = $"New York"
onready var NyBCheck = $"New York/CheckBox"
onready var SPB = $"Sao Paulo"
onready var SPBCheck = $"Sao Paulo/CheckBox"
onready var BAB = $"Buenos Aires"
onready var BABCheck = $"Buenos Aires/CheckBox"
onready var CTB = $"Cape Town"
onready var CTBCheck = $"Cape Town/CheckBox"
onready var LagB = $Lagos
onready var LagBCheck = $Lagos/CheckBox
onready var CaiB = $Cairo
onready var CaiBCheck = $Cairo/CheckBox
onready var MosB = $Moscow
onready var MosBCheck = $Moscow/CheckBox
onready var BeiB = $Beijing
onready var BeiBCheck = $Beijing/CheckBox
onready var TokB = $Tokyo
onready var TokBCheck = $Tokyo/CheckBox
onready var HKB = $"Hong Kong"
onready var HKBCheck = $"Hong Kong/CheckBox"
onready var SydB = $Sydney
onready var SydBCheck = $Sydney/CheckBox

var inside: bool = false
var abajo: bool = false
var speed = 100
var vel = Vector2(250, 95)
var velb = Vector2(250, -170)
var current_location = ""



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
		Ttext.text = current_location


func _on_Santiago_pressed() -> void:
	Ttext.text = "Santiago"


func _on_Buenos_Aires_pressed() -> void:
	Ttext.text = "Buenos Aires"


func _on_Sao_Paulo_pressed() -> void:
	Ttext.text = "Sao Paulo"


func _on_Cape_Town_pressed() -> void:
	Ttext.text = "Cape Town"


func _on_Lagos_pressed() -> void:
	Ttext.text = "Lagos"


func _on_Mexico_City_pressed() -> void:
	Ttext.text = "Mexico City"


func _on_New_York_pressed() -> void:
	Ttext.text = "New York"


func _on_Miami_pressed() -> void:
	Ttext.text = "Miami"


func _on_Ottawa_pressed() -> void:
	Ttext.text = "Ottawa"


func _on_Tokyo_pressed() -> void:
	Ttext.text = "Tokyo"


func _on_Beijing_pressed() -> void:
	Ttext.text = "Beijing"


func _on_Moscow_pressed() -> void:
	Ttext.text = "Moscow"


func _on_Cairo_pressed() -> void:
	Ttext.text = "Cairo"


func _on_Hong_Kong_pressed() -> void:
	Ttext.text = "Hong Kong"


func _on_Sydney_pressed() -> void:
	Ttext.text = "Sidney"


func _on_Button_pressed() -> void:
	current_location = Ttext.text
