extends CharacterBody2D

var speed = 5
var max_speed = 100
var rotate_speed = 0.08

func _physics_process(delta):
	if Input.is_action_pressed("Left"):
		rotation -= rotate_speed
	if Input.is_action_pressed("Right"):
		rotation += rotate_speed
	if Input.is_action_pressed("Forward"):
		velocity = velocity + Vector2(0, -speed).rotated(rotation)
	
	if position.x > 1152:
		position.x = 0
	if position.y > 648:
		position.y = 0
	velocity = velocity.normalized() * clamp(velocity.length(), 0, max_speed)
	
	move_and_slide()
