extends Button



func _on_Area2D_body_entered(body):
	self.visible = true
func _on_Area2D_body_exited(body):
	self.visible = false



func _on_Button_pressed():
	get_tree().change_scene("res://levels/pickupin.tscn")
