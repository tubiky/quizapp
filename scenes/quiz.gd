extends Control

@onready var menuSection = preload("res://scenes/menu.tscn")

@onready var category_label = $TextureRect/MarginContainer/VBoxContainer/CategoryLabel
@onready var number_label = $TextureRect/MarginContainer/VBoxContainer/NumberLabel

func _ready():
	category_label.text = "Category: " + Singleton.selected_category
	number_label.text = str(Singleton.quiz_index + 1) + "/" + str(Singleton.total_quiz_number)
	


func _on_back_to_menu_btn_pressed():
	get_tree().change_scene_to_packed(menuSection)
