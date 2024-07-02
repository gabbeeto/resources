extends Area3D


class_name ButtonOn3D

var selected: bool = false

var sceneToGo: PackedScene


func _process(_delta: float) -> void:
	#replace this with your assigned Button
	var userPressed: bool = Input.is_action_pressed("go")
	if selected and userPressed:
		applyNewChanges()
		goToScene()


func applyNewChanges() -> void:
	pass

func goToScene() -> void:
	get_tree().change_scene_to_packed(sceneToGo)


func _on_mouse_exited() -> void:
	selected = false

func _on_mouse_entered() -> void:
	selected = true
