extends Node2D

var carrot = preload("res://carrot.tscn")

var on_a_carrot = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	#tiny collisionarea that sticks to mouse
	$Area2D/WorldCollisionShape2D.global_position = get_local_mouse_position()

	if Input.is_action_just_released("LeftClick"):
		Input.get
		if on_a_carrot: # exit if already on a carrot
			return #exit
		var carrotinstance : Node2D = carrot.instantiate()
		add_child(carrotinstance)
		carrotinstance.position = get_global_mouse_position()

func _on_area_2d_area_entered(area: Area2D) -> void:
	print("on a carrot")
	on_a_carrot = true

func _on_area_2d_area_exited(area: Area2D) -> void:
	print("off a carrot")
	on_a_carrot = false

