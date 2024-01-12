extends CharacterBody2D

const SPEED = 300.0
var direction = Vector2.RIGHT

func _process(delta):
		get_input()

func _physics_process(delta):
	#var direction = Input.get_vector("left", "right", "up", "down")
	#if direction:
	velocity = SPEED * direction
	#velocity = move_toward(velocity, 0, SPEED)

	move_and_slide()
	
func get_input():
	if Input.is_action_just_pressed("up") and direction != Vector2.DOWN:
		direction = Vector2.UP
	if Input.is_action_just_pressed("down") and direction != Vector2.UP:
		direction = (Vector2.DOWN)
	if Input.is_action_just_pressed("left") and direction != Vector2.RIGHT:
		direction = (Vector2.LEFT)		
	if Input.is_action_just_pressed("right") and direction != Vector2.LEFT:
		direction = (Vector2.RIGHT)
		
