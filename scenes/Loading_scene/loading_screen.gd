extends Control

@export var loadingBar: TextureProgressBar

func _ready() -> void:
	SignalManager.LOADING_PROGRESS_UPDATED.connect(_on_progress_updated)

func _on_progress_updated(percentage):
	loadingBar.value = percentage
