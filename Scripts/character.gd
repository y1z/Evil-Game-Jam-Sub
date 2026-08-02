extends Node2D

var movement_script : Movement

@export_group("VARIABLES")
@export var speed :float 
@export var should_move : bool 

func _ready() -> void:
	movement_script = %movement_script
	movement_script.speed = speed
	movement_script.should_move = should_move
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
