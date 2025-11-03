extends Node2D

var parent: Initializer;

func _ready() -> void:
	var _parent := get_parent();

	if not _parent is Initializer:
		queue_free();
		return;
	
	parent = _parent;

	var board := parent.board;
	var tile_pos := get_tile_pos();
	global_position = board.map_to_local(tile_pos) + board.global_position;


func get_tile_pos() -> Vector2i:
	var board := parent.board;
	return board.local_to_map(global_position - board.global_position);


func _on_button_pressed() -> void:
	var movement := parent.movement;
	movement.clear();

	movement.set_cell(get_tile_pos() + Vector2i.UP, 1, Vector2i.ZERO);
