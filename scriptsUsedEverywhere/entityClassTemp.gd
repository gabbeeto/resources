extends CharacterBody3D

class_name Entity


@export var MovingSpeed: int = 25
@export var Health: int = 10

@export var JumpHeight : float  = 20
@export var JumpTimeToReachHeight : float = 0.7
@export var JumpTimeToFallDown : float = 0.8

@onready var jumpVelocity : float = ((2.0 * JumpHeight) / JumpTimeToReachHeight)
@onready var jumpGravity : float = ((-2.0 * JumpHeight) / (JumpTimeToReachHeight * JumpTimeToReachHeight))
@onready var fallGravity : float = ((-2.0 * JumpHeight) / (JumpTimeToFallDown * JumpTimeToFallDown))


func handleGravity(delta: float) -> void:
	var gravity: float = jumpGravity if velocity.y < 0.0 else fallGravity
	velocity.y += gravity * delta

func jump() -> void:
	velocity.y = jumpVelocity


func removeHealth(damage: int) -> void:
	var entityDoesntHaveHealthPoints: bool = self.Health - damage <= 0
	if entityDoesntHaveHealthPoints:
		performDieAction()
	else:
		self.Health -= damage

func performDieAction() -> void:
	self.queue_free()










