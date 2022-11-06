extends KinematicBody2D

export (int) var speed = 10

var hide = false
var velocity = Vector2()

func _player_control():
	velocity.x = 0
	
	var hide_take = Input.is_action_just_pressed("take_hind gun")
	var left = Input.is_action_pressed("ui_left")
	var right = Input.is_action_pressed("ui_right")

	if hide_take:
		hide = !hide
		
	if left:
		velocity.x -= speed
	elif right:
		velocity.x += speed

func _ready():
	$CanvasLayer/reloadBar.max_value = $hand.reload_time
func _process(delta):
	_player_control()
	$hand.visible = hide
	
	velocity = move_and_slide(velocity, Vector2(0, -1))
	
	$CanvasLayer/reloadBar.value = $hand.timer
	$CanvasLayer/Label.text = str($hand.magazine) + " / 6"
