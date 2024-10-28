extends Node2D

@export var start_point: Vector2 = Vector2(100, 100)
@export var end_point: Vector2 = Vector2(100, 200)
@export var stroke: Color = Color.BLACK
@export var width: float = 2.0

@onready var line = $Line2D

func _ready() -> void:
	line.width = width
	line.default_color = stroke
	line.points = [start_point, end_point]

func set_props(color: Color, thickness: float) -> void:
	stroke = color
	width = thickness

func set_points(start: Vector2, end: Vector2) -> void:
	start_point = start
	end_point = end
