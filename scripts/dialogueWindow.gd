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
		elif text[dialogue_index]["choise"] == "Вылезай.":
			get_tree().change_scene("res://levels/wakin.tscn")
		elif text[dialogue_index]["choise"] == "Окружили":
			get_tree().change_scene("res://levels/doubleKill.tscn")
		else:
			$Button.text = text[dialogue_index]["choise"]
		
		if $Background.animation != text[dialogue_index]["Background"]:
			$Background.animation = text[dialogue_index]["Background"]
		$ColorRect/Label.text = text[dialogue_index]["Name"]
		$ColorRect/RichTextLabel.bbcode_text = text[dialogue_index]["Text"]
		dialogue_index += 1
	else:
		active = false
		finished = true
	
	if $ColorRect/RichTextLabel.text == "":
		$ColorRect.visible = false
	else:
		$ColorRect.visible = true
	if $Button.text == "":
		$Button.visible = false
	else:
		$Button.visible = true
	
	$ColorRect/RichTextLabel.percent_visible = 0

func _ready():
	if get_parent().name == "pickupin":
		text = get_parent().get_node("base").pickin
	elif GS.escape:
		text = get_parent().get_node("base").after_catapult
	else:
		text = get_parent().get_node("base").intro
	text_read()
func _process(delta):
	
	if active:
		$ColorRect/RichTextLabel.percent_visible += delta * float(10) * textSpeed
		if Input.is_action_just_pressed("ui_accept") and shoot == false and $Button.visible == false:
			text_read()
		elif shoot == true:
			if Input.is_action_just_pressed("lkm"):
				shoot = false
				text_read()


func _on_Button_pressed():
	text_read()
