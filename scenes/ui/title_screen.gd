extends Control

@onready var label: Label = $MC/VB/Label
@onready var label_1: Label = $MC/VB/Butonmenu/NewGameBttn/Label1
@onready var label_2: Label = $MC/VB/Butonmenu/LoadGameBttn/Label2
@onready var label_3: Label = $MC/VB/Butonmenu/CreditsGameBttn/Label3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.text = "Tubilda's game"
	label_1.text = "New Game"
	label_2.text = "Load Game"
	label_3.text = "Credits"


func _on_new_game_bttn_pressed() -> void:
	GameManager.startNewGame()
	Loader.loadScene(self, "res://scenes/game/game.tscn")

func _on_load_game_bttn_pressed() -> void:
	pass # Replace with function body.


func _on_credits_game_bttn_pressed() -> void:
	pass # Replace with function body.
