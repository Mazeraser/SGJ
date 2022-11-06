extends KinematicBody2D

export (int) var speed = 150

var hide = false
var velocity = Vector2()

func _player_control():
	velocity.x = 0
	velocity.y = 0
	
	var left = Input.is_action_pressed("ui_left")
	var right = Input.is_action_pressed("ui_right")
	var down = Input.is_action_pressed("ui_down")
	var up = Input.is_action_pressed("ui_up")
		
	if left:
		velocity.x -= speed
	elif right:
		velocity.x += speed
	
	if up:
		velocity.y -= speed
	elif down:
		velocity.y += speed

func _process(delta):
	_player_control()
	
	if velocity.x != 0 or velocity.y != 0:
		$AnimationPlayer.play("walk")
	else:
		$AnimationPlayer.play("idle")
	
	velocity = move_and_slide(velocity, Vector2(0, -1))
