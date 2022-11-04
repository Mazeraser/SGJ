extends Control

export (float) var textSpeed = 1

onready var text = get_parent().get_node("base").intro

var dialogue_index = 0
var active
var finished

func text_read():
	if dialogue_index < text.size():
		active = true
		finished = false
		
		if text[dialogue_index]["choise"] != "":
			$ColorRect/Button.text = text[dialogue_index]["choise"]
		
		$ColorRect/Background.texture = text[dialogue_index]["Background"]
		$ColorRect/Label.text = text[dialogue_index]["Name"]
		$ColorRect/RichTextLabel.bbcode_text = text[dialogue_index]["Text"]
		dialogue_index += 1
	else:
		active = false
		finished = true
		dialogue_index = 0
	
	if $ColorRect/Button.text == "":
		$ColorRect/Button.visible = false
	else:
		$ColorRect/Button.visible = true
	
	$ColorRect.visible = active
	$ColorRect/RichTextLabel.percent_visible = 0

func _ready():
	text_read()
func _process(delta):
	if active:
		$ColorRect/RichTextLabel.percent_visible += delta * float(10) * textSpeed
		if Input.is_action_just_pressed("ui_accept") and $ColorRect/Button.visible == false:
			text_read()


func _on_Button_pressed():
	text_read()
	text = get_parent().get_node("base").after_catapult
