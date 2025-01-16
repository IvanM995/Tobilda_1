extends Node

@export var loadingScene = preload("res://scenes/Loading_scene/loading_screen.tscn").instantiate()

var _scenePath : String


func loadScene(caller, path) -> void:
	_scenePath = path
	
	get_tree().root.add_child(loadingScene)
	
	ResourceLoader.load_threaded_request(_scenePath)
	
	caller.queue_free()
	

func _process(delta: float) -> void:
	if (_scenePath != null):
		var progress = []
		var loaderStauts = ResourceLoader.load_threaded_get_status(_scenePath, progress)
		
		if (loaderStauts == ResourceLoader.THREAD_LOAD_LOADED):
			var loadedScene = ResourceLoader.load_threaded_get(_scenePath).instantiate()
			
			get_tree().root.remove_child(loadingScene)
			get_tree().root.add_child(loadedScene)
			
			#_scenePath = null
			
		elif (loaderStauts == ResourceLoader.THREAD_LOAD_IN_PROGRESS):
			SignalManager.LOADING_PROGRESS_UPDATED.emit(progress[0])
			
		
