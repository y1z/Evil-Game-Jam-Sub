class_name Movement extends CharacterBody2D

const DEFAULT_SPEED: float = 400.0
const DEFAULT_MINIMUM_DISTANCE: float = 10.0
const DEFAULT_MINIMUM_RADIUS: float = 20.0

@export_group("VARIABLES")
@export var target: Vector2 = self.position
@export var speed: float = DEFAULT_SPEED
@export var should_move: bool = false
@export_range(DEFAULT_MINIMUM_RADIUS, 9999.0) var hit_box_radius: float

var collsion_shape: CollisionShape2D


func _ready() -> void:
	collsion_shape = %CollisionShape2D
	if collsion_shape.shape is CircleShape2D:
		var circle := collsion_shape.shape as CircleShape2D
		DPrint.d_print_verbose("radius before %s" % circle.radius)
		circle.radius = hit_box_radius
		DPrint.d_print_verbose("radius after %s" % circle.radius)
		circle = collsion_shape.shape as CircleShape2D
		DPrint.d_print_verbose("one more check %s" % circle.radius)


func _physics_process(delta: float) -> void:
	if not should_move: return
	velocity = self.position.direction_to(target) * speed
	if self.position.distance_to(target) > DEFAULT_MINIMUM_DISTANCE:
		move_and_slide()


func set_target(x: float, y: float) -> void:
	target.x = x;
	target.y = y


func set_targetv(new_target: Vector2) -> void:
	set_target(new_target.x, new_target.y)


func set_targetn(new_target: Node2D) -> void:
	set_targetv(new_target.position)
