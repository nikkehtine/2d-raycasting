extends Node2D

@export var start_point: Vector2 = Vector2(100, 100)
@export var end_point: Vector2 = Vector2(100, 200)
@export var stroke: Color = Color.BLACK
@export var width: float = 2.0

@onready var line = $Line2D

func _ready() -> void:
	if line:
		line.width = width
		line.default_color = stroke
		line.points = [start_point, end_point]
	else:
		print("ERR: Line2D node not found")

func set_props(start: Vector2, end: Vector2, color: Color = Color.BLACK, thickness: float = 2.0) -> void:
	start_point = start
	end_point = end
	stroke = color
	width = thickness
