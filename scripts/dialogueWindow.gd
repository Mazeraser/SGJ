extends Control

export (float) var textSpeed = 1

var text
var dialogue_index = 0
var active
var finished
var shoot = false

func text_read():
	if dialogue_index < text.size():
		active = true
		finished = false
		
		if text[dialogue_index]["choise"] == "Выстрел":
			print("SHOOT!")
			shoot = true
		elif text[dialogue_index]["choise"] == "Катапультироваться.":
			get_tree().change_scene("res://levels/scenes.tscn")
		
		$Background.texture = text[dialogue_index]["Background"]
		$ColorRect/Label.text = text[dialogue_index]["Name"]
		$ColorRect/RichTextLabel.bbcode_text = text[dialogue_index]["Text"]
		dialogue_index += 1
	elif text == get_parent().get_node("base").after_catapult:
		text = get_parent().get_node("base").in_city
		dialogue_index = 0
	else:
		active = false
		finished = true
	
	if $ColorRect/RichTextLabel.text == "":
		$ColorRect.visible = false
	else:
		$ColorRect.visible = true
	$ColorRect/RichTextLabel.percent_visible = 0

func _ready():
	if GS.escape:
		text = get_parent().get_node("base").after_catapult
	else:
		text = get_parent().get_node("base").intro
	text_read()
func _process(delta):
	
	if active:
		$ColorRect/RichTextLabel.percent_visible += delta * float(10) * textSpeed
		if Input.is_action_just_pressed("ui_accept") and shoot == false:
			text_read()
		elif shoot == true:
			if Input.is_action_just_pressed("lkm"):
				shoot = false
				text_read()
