extends Resource

class_name bird_resource

@export var spriteFrames : SpriteFrames
@export var health : int
@export var happiness : int
@export var hunger : int
@export var enrichment : int

@export var speed : int
@export var ideal_pop_size : int
@export_enum("Small", "Medium", "Large") var size : String
@export_enum("Forest", "Rainforest", "Desert", "Tundra", "Mountains") var biome : String
@export_enum("Herbivore", "Carnivore", "Omnivore") var diet : String
@export var drops : PackedStringArray
@export_enum("Diurnal", "Nocturnal", "Crepuscular") var activity_time : String

