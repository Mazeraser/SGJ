extends KinematicBody2D

export (int) var speed = 3000
var velocity = Vector2()

func start(pos, dir):
	rotation = dir
	position = pos
	velocity = Vector2(speed, 0).rotated(rotation)

func _process(delta):
	move_and_slide(velocity)
