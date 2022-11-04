extends Area2D

var jaja 

func _on_button_body_entered(body):
	jaja = true
func _on_button_body_exited(body):
	jaja = false

func _process(delta):
	if Input.is_action_just_pressed("lkm") and jaja:
		GS.escape = true
		get_tree().change_scene("res://levels/intro.tscn")
