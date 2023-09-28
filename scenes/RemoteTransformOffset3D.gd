extends Node3D
class_name RemoteTransformOffset3D

@export var remote_path : Node3D

var pos_offset : Vector3
var rot_offset : Vector3

var loc_pos_offset : Vector3
var loc_rot_offset : Vector3

func _ready() -> void:
	pos_offset = remote_path.global_position
	rot_offset = remote_path.global_rotation
	loc_pos_offset = global_position
	loc_rot_offset = global_rotation


func _process(delta: float) -> void:
	remote_path.global_position = global_position - loc_pos_offset + pos_offset
	remote_path.global_rotation = global_rotation - loc_rot_offset + rot_offset
