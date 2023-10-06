extends CharacterBody2D


const SPEED = 150.0

func _ready():
	# When the node is loaded, we set the animation is set to the walk animation.
	$Character_Body.animation = 'walk'
	$Whoosh_Effect.hide()

func _process(delta):
	if Input.is_action_pressed('left_click'):
		print('you left clicked!')

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	var d_left_right = Input.get_axis("left_action", "right_action")
	var d_up_down = Input.get_axis('up_action', "down_action")
	
	# Playing walking animation if there is any movement
	if velocity.length() > 0:
		$Character_Body.play()
	else:
		$Character_Body.stop()
	
	# if we are moving left or right move us that direction times the speed
	if d_left_right:
		velocity.x = d_left_right * SPEED
		# Flip the animation based on the direction we're moving
		$Character_Body.flip_h = velocity.x < 0
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	# if we are moving up or down, moves us that direction times the speed
	if d_up_down:
		velocity.y = d_up_down * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
		
		
		
	
	move_and_slide()
