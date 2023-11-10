extends Control


# starts new game
func _on_new_game_pressed():
	# TODO: stub. change filepath to game scene or add new game handler logic
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")

# TODO: stub. pass in loading logic once created
func _on_load_game_pressed():
	pass # Replace with function body.

# redirects to options scene
func _on_options_pressed():
	get_tree().change_scene_to_file("res://scenes/options_menu.tscn")

# exits game
func _on_exit_pressed():
	get_tree().quit()

