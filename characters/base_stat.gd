extends Resource
class_name BaseStat

@export var min_stat: int = 1
@export var max_stat: int = 9999

@export var stat_name: String

var _stat_value: int = min_stat
@export var stat_value: int:
	get:
		return _stat_value
	set(value):
		_stat_value = clamp(value, min_stat, max_stat)

func _init(p_stat_name: String) -> void:
	stat_name = p_stat_name