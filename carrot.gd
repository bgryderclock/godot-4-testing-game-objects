extends Node2D

var on_a_carrot = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if on_a_carrot == true:
		return
	$AnimatedSprite2D.play("seed")
	await get_tree().create_timer(1).timeout
	$AnimatedSprite2D.play("growlevel1")
	await get_tree().create_timer(2).timeout
	$AnimatedSprite2D.play("growlevel2")
	await get_tree().create_timer(2).timeout
	$AnimatedSprite2D.play("growlevel3")
	await get_tree().create_timer(3).timeout
	$AnimatedSprite2D.play("growlevel4")
	await get_tree().create_timer(4).timeout
	$AnimatedSprite2D.play("growlevel5")
	await get_tree().create_timer(5).timeout
	#queue_free() #deletes the carrot

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#if can_place_carrot == false:
	#	queue_free()
	pass

func _on_area_2d_mouse_entered() -> void:
	if InputEvent:
		#print("we are on a carrot")
		on_a_carrot = true
		#print("_on_area_2d_mouse_entered() no more carrots please!")

func _on_area_2d_mouse_exited() -> void:
	#print("off carrot")
	on_a_carrot = false
	
	
func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouse:
		#print("carrot event")
		pass





