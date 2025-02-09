extends Node
class_name GameScreen


@export var map:Node




func _ready():
	map.add_child(load(GameManager.currentMap).instantiate())



func _process(_delta):
	pass
