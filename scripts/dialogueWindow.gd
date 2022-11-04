extends Control

export (float) var textSpeed = 1

onready var text = get_parent().get_node("base").intro

var dialogue_index = 0
var active
var finished
var shoot = false

func text_read():
	if dialogue_index < text.size():
		active = true
		finished = false
		
		if text[dialogue_index]["choise"] != "" and text[dialogue_index]["choise"] != "Выстрел":
			$ColorRect/Button.text = text[dialogue_index]["choise"]
		elif text[dialogue_index]["choise"] == "Выстрел":
			print("SHOOT!")
			shoot = true
		
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
	
	if $ColorRect/Button.text == "":
		$ColorRect/Button.visible = false
	else:
		$ColorRect/Button.visible = true
	
	if $ColorRect/RichTextLabel.text == "":
		$ColorRect.visible = false
	else:
		$ColorRect.visible = true
	$ColorRect/RichTextLabel.percent_visible = 0

func _ready():
	text_read()
func _process(delta):
	
	if active:
		$ColorRect/RichTextLabel.percent_visible += delta * float(10) * textSpeed
		if Input.is_action_just_pressed("ui_accept") and $ColorRect/Button.visible == false and shoot == false:
			text_read()
		elif shoot == true:
			if Input.is_action_just_pressed("lkm"):
				shoot = false
				text_read()


func _on_Button_pressed():
	if $ColorRect/Button.text == "Катапультироваться.":
		text = get_parent().get_node("base").after_catapult
		dialogue_index = 0
		$ColorRect/Button.text = ""
		text_read()
