extends Label


func _ready() -> void:
	text = text + ProjectSettings.get_setting("application/config/version")

func _process(_delta: float) -> void:
	pass
