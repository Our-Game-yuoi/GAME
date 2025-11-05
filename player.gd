extends CharacterBody2D

var speed = 200

func _physics_process(delta):
	var x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	var y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	velocity = Vector2(x, y).normalized() * speed
	move_and_slide()
