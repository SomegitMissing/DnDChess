extends Node2D

var board: TileMapLayer;

func _ready() -> void:
	var parent := get_parent();

	if not parent is Initializer:
		queue_free();
		return;

	board = (parent as Initializer).board;
	var tile_pos := board.local_to_map(global_position - board.global_position);
	global_position = board.map_to_local(tile_pos) + board.global_position;

func _on_button_pressed() -> void:
	print("I am being pressed")
