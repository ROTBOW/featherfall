extends CharacterBody2D
const speed = 30
var current_state = IDLE

var dir = Vector2.RIGHT
var start_pos

enum {
	IDLE,
	NEW_DIR,
	MOVE
}

func _ready():
	randomize()
	start_pos = position

func _process(delta):
	if current_state == 0 or current_state == 1:
		$AnimatedSprite2D.play("sides")
	elif current_state == 2:
		if dir.x == -1:
			$AnimatedSprite2D.flip_h = true
			$AnimatedSprite2D.play("sides")
		if dir.x == 1:
			$AnimatedSprite2D.flip_h = false
			$AnimatedSprite2D.play("sides")
		if dir.y == -1:
			$AnimatedSprite2D.play("up")
		if dir.y == 1:
			$AnimatedSprite2D.play("down")
	
	match current_state:
		IDLE:
			pass
		NEW_DIR:
			dir = choose([Vector2.RIGHT, Vector2.UP, Vector2.LEFT, Vector2.DOWN])
		MOVE:
			move(delta)
			
func choose(array):
	array.shuffle()
	return array.front()
	
func move(delta):
	position += dir * speed * delta
	print(position)
	
func _on_timer_timeout():
	$Timer.wait_time = choose([0.5, 1, 1.5])
	current_state = choose([IDLE, NEW_DIR, MOVE])
