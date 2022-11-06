extends Node2D

var timer = 0

func _process(delta):
	timer += delta
	if timer >= 5.0:
		$ColorRect.visible = true
		if timer > 5.0:
			$ColorRect/RichTextLabel.percent_visible += delta
