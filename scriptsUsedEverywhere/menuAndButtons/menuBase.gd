extends Node3D

class_name MenuOn3D

#assignButtonsRightHere
@onready var buttonsToSeparate = $buttons.get_children()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	applyNewChanges()
	separateButtons()

func applyNewChanges() -> void:
	pass

func separateButtons() -> void:
	var buttons: Array[Node] = buttonsToSeparate as Array

	var index: int = 0
	var separation: float = 2.6
	while index < buttons.size():
		var currentButton: Node = buttons[index] 
		# add separation to buttons
		currentButton.position.y = index * separation * -1
		index = index + 1



