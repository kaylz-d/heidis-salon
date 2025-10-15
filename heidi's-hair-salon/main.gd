extends Node

var selection : int = 0
@onready var arrow = get_node("Arrow")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass
	
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("down"):
		if selection <= 1:
			selection += 1
			arrow.position.y += 30
	if Input.is_action_just_pressed("up"):
		if selection >= 1:
			selection -= 1
			arrow.position.y -= 30
	if Input.is_action_just_pressed("space"):
		selection_action()

func selection_action() -> void:
	if selection == 0:
		get_tree().change_scene_to_file("res://Start.tscn")
	elif selection == 1:
		get_tree().change_scene_to_file("res://Settings.tscn")
	elif selection == 2:
		get_tree().change_scene_to_file("res://Credits.tscn")
