extends Control

@onready var label: Label = $TextLabel   # foloseşte numele corect din Scene Tree

var lines: Array = [
	"those times",
	"I always remind myself of",
	"When I was clueless",
    "How cruel the world can be."
]

func _ready() -> void:
	print("--- Intro _ready ---")
	if label == null:
		printerr("ERROR: Label node not found. Check name in Scene Tree.")
		return
	label.show()
	label.text = "DEBUG: Intro loaded"
	await get_tree().create_timer(0.5).timeout
	show_lines_then_game()

func show_lines_then_game() -> void:
	for line in lines:
		print("showing line:", line)
		label.text = line
		await get_tree().create_timer(2.0).timeout
	print("finished lines, changing to Game")
	get_tree().change_scene_to_file("res://Game.tscn")
