extends Area2D



func _on_ded_body_entered(body):
	$Button.visible = true
func _on_ded_body_exited(body):
	$Button.visible = false
