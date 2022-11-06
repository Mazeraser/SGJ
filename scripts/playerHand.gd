extends StaticBody2D

export (float) var reload_time = 1.5

var magazine = 6
var max_magazine = 6
var reloading = false
var bull = preload("res://scenes/bullet.tscn")
var timer = 0

func _process(delta):
	self.look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("lkm") and self.visible and reloading == false and magazine>0:
		magazine -= 1
		var b = bull.instance()
		b.start(self.position, rotation)
		get_parent().add_child(b)
	elif magazine == 0:
		reloading = true
	
	if Input.is_action_just_pressed("reloading") and magazine < 6:
		reloading = true
	
	if reloading:
		if timer < reload_time and magazine != max_magazine:
			timer += delta
		elif magazine != max_magazine:
			timer = 0
			magazine += 1
		else:
			timer = 0
			reloading = false
