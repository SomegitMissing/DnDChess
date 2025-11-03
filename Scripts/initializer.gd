class_name Initializer
extends Node2D

@export var board: TileMapLayer;

func _ready() -> void:
	PhysicsServer3D.set_active(false);
	NavigationServer3D.set_active(false);
