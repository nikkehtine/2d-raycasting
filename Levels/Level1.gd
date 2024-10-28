extends Node2D

const Boundary = preload("res://Actors/Boundary.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var b = Boundary.instantiate()
	b.set_points(Vector2(300, 300), Vector2(300, 100))
	b.set_props(Color.DIM_GRAY, 2.0)
	add_child(b)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
