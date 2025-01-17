extends Node2D

func _ready():
	PathHandler.add_edge.connect(create_edge)

func create_edge(start: Vector2, end: Vector2):
	var new_edge = ConstellationEdge.new()
	new_edge.add_point(start)
	new_edge.add_point(end)
	new_edge.default_color = Color('#c0d0a5')
	
	add_child(new_edge)
