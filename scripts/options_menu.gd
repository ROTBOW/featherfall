extends Control


# options TBD. stubs for now

func _on_difficulty_pressed():
	pass # Replace with function body.

func _on_credits_pressed():
	pass # Replace with function body.

# return to main menu
func _on_back_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
