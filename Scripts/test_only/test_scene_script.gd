extends Node2D

@export_category("VARIABLES")
@export var test_speed:float:
	set(new_test_speed):
		test_speed = new_test_speed 
		if test_scene_character != null:
			test_scene_character.speed = test_speed
@export var test_custom_pos: Vector2
@export var test_custom_node2d: Node2D

var test_scene_character: Character


func _ready() -> void:
	test_scene_character = %Character
	test_scene_character.movement_script.should_move = true
	test_speed = 100
	pass # Replace with function body.


func _input(event: InputEvent) -> void:
	if OS.is_debug_build():
		if event.is_action_pressed("DEBUG_Q"):
			test_scene_character.movement_script.set_targetv(Vector2(500, 500))

		if event.is_action_pressed("DEBUG_W"):
			test_scene_character.movement_script.set_targetv(test_custom_pos)

		if event.is_action_pressed("DEBUG_E"):
			test_scene_character.movement_script.set_targetn(test_custom_node2d)
