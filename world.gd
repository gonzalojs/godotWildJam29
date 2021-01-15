extends Node2D
#cuando hay cambió de estado, cambiar imagen de fondo y valores de dinero, estado mental y aburrimiento.

onready var partyB = $LevelLayer/PartyBsck/sprite
onready var decB = $LevelLayer/DecBack/sprite
onready var workB = $LevelLayer/WorkBack/sprite
onready var player_healt = $LevelLayer/Health
onready var healthbar = $LevelLayer/Control/HealthBar
onready var Timered = $Timer
onready var Bu1 = $LevelLayer/Button
onready var Bu2 = $LevelLayer/Button2
onready var Bu3 = $LevelLayer/Button3
onready var WorkPanel = $LevelLayer/WorkPanel
onready var Tween = $Tween

var side = Vector2(-160, 64)
var sideb = Vector2(0, 64)
var dentro = false

const TIME_REACTIVATE = 1

func _ready() -> void:	
	player_healt.connect("changed", healthbar, "set_value")
	player_healt.connect("max_changed", healthbar, "set_max")
	
	player_healt._initialize()

func _on_Party_pressed() -> void:
	player_healt.current += 1
	deactivate()
	Timered.start()
	decB.visible = false
	workB.visible = false
	partyB.visible = true

func _on_work_pressed() -> void:
	print(WorkPanel.position)
	workp()
	player_healt.current -= 1
#	deactivate()
	Timered.start()
	decB.visible = false
	partyB.visible = false
	workB.visible = true

func _on_Timer_timeout() -> void:
	activate()

func deactivate ():
	Bu1.disabled = true
	Bu2.disabled = true
	Bu3.disabled = true

func activate ():
	decB.visible = true
	workB.visible = false
	partyB.visible = false
	Bu1.disabled = false
	Bu2.disabled = false
	Bu3.disabled = false

func workp ():
	if dentro == false:
		dentro = true
		Tween.interpolate_property(WorkPanel, "position", side, sideb, 0.2,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		Tween.start()

	elif dentro == true:
#		self.translate(velb)
		Tween.interpolate_property(WorkPanel, "position", sideb, side, 0.2,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		Tween.start()
		dentro = false
