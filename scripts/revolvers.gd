extends AnimatedSprite



func _on_Area1_input_event(viewport, event, shape_idx):
	if event is InputEventMouseMotion:
		self.play("1")
func _on_Area2_input_event(viewport, event, shape_idx):
	if event is InputEventMouseMotion:
		self.play("2")
func _on_Area3_input_event(viewport, event, shape_idx):
	if event is InputEventMouseMotion:
		self.play("3")
func _on_Area4_input_event(viewport, event, shape_idx):
	if event is InputEventMouseMotion:
		self.play("4")
func _on_Area5_input_event(viewport, event, shape_idx):
	if event is InputEventMouseMotion:
		self.play("5")
func _on_Area6_input_event(viewport, event, shape_idx):
	if event is InputEventMouseMotion:
		self.play("6")
