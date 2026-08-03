class_name Character extends Node2D

var movement_script : Movement

@export_group("VARIABLES")
@export_range(10.0,999999999.0) var speed :float: 
	set(new_speed):
		speed = new_speed
		print("Character new speed %s " % speed)
		if movement_script != null:
			movement_script.speed = speed
@export var should_move : bool:
	set(new_should_move):
		should_move = new_should_move
		if movement_script != null:
			movement_script.should_move = new_should_move

func _ready() -> void:
	movement_script = %movement_script
	movement_script.speed = speed
	movement_script.should_move = should_move
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
