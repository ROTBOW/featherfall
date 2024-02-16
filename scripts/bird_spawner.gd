extends Node2D

@onready var spawned_birds = $SpawnedBirds
## @onready var tilemap = get_tree().root.get_node("Main/HubLevel/BaseGrassTileMap")


@export var max_birds = 4
var bird_count = 0 
var rng = RandomNumberGenerator.new()


func spawn_bird():
##	var random_position = Vector2(
##		rng.randi() % tilemap.get_used_rect().size.x,
##		rng.randi() % tilemap.get_used_rect().size.y
##	)
	var bird = Global.bird_scene.instantiate()
##	bird.position = tilemap.map_to_local(random_position) + Vector2(16, 16) / 2
	bird.position = Vector2(0,0)
	spawned_birds.add_child(bird)
	


func _on_timer_timeout():
	if bird_count < max_birds:
		spawn_bird()
		bird_count = bird_count + 1
