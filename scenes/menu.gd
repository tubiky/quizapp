extends Control

@onready var quizSection = preload("res://scenes/quiz.tscn")

@onready var categoryContainer = $BG/MarginContainer/VBoxContainer/CategoryContainer

@onready var pronoun_button = $BG/MarginContainer/VBoxContainer/CategoryContainer/PronounBTN
@onready var gerund_button = $BG/MarginContainer/VBoxContainer/CategoryContainer/GerundBTN
@onready var toInfinitive_button = $BG/MarginContainer/VBoxContainer/CategoryContainer/ToInfinitiveBTN
@onready var relativePronoun_button = $BG/MarginContainer/VBoxContainer/CategoryContainer/RelativePronounBTN
@onready var tense_button = $BG/MarginContainer/VBoxContainer/CategoryContainer/TenseBTN
@onready var comparative_button = $BG/MarginContainer/VBoxContainer/CategoryContainer/ComparativeBTN
@onready var conjunction_button = $BG/MarginContainer/VBoxContainer/CategoryContainer/ConjunctionBTN
@onready var participle_button = $BG/MarginContainer/VBoxContainer/CategoryContainer/ParticipleBTN
@onready var passive_button = $BG/MarginContainer/VBoxContainer/CategoryContainer/PassiveBTN
@onready var subjunctive_button = $BG/MarginContainer/VBoxContainer/CategoryContainer/SubjunctiveBTN


func _on_start_button_pressed():
	if Singleton.selected_category == "": 
		return
	else:
		print(Singleton.selected_category + "카테고리가 선택되었습니다.")
		get_tree().change_scene_to_packed(quizSection)


func _on_pronoun_btn_pressed():
	Singleton.selected_category = pronoun_button.texture_normal.resource_path.get_file().get_slice("_", 0)


func _on_gerund_btn_pressed():
	Singleton.selected_category = gerund_button.texture_normal.resource_path.get_file().get_slice("_", 0)


func _on_to_infinitive_btn_pressed():
	Singleton.selected_category = toInfinitive_button.texture_normal.resource_path.get_file().get_slice("_", 0)


func _on_relative_pronoun_btn_pressed():
	Singleton.selected_category = relativePronoun_button.texture_normal.resource_path.get_file().get_slice("_", 0)


func _on_tense_btn_pressed():
	Singleton.selected_category = tense_button.texture_normal.resource_path.get_file().get_slice("_", 0)


func _on_comparative_btn_pressed():
	Singleton.selected_category = comparative_button.texture_normal.resource_path.get_file().get_slice("_", 0)


func _on_conjunction_btn_pressed():
	Singleton.selected_category = conjunction_button.texture_normal.resource_path.get_file().get_slice("_", 0)


func _on_participle_btn_pressed():
	Singleton.selected_category = participle_button.texture_normal.resource_path.get_file().get_slice("_", 0)


func _on_passive_btn_pressed():
	Singleton.selected_category = passive_button.texture_normal.resource_path.get_file().get_slice("_", 0)


func _on_subjunctive_btn_pressed():
	Singleton.selected_category = subjunctive_button.texture_normal.resource_path.get_file().get_slice("_", 0)
