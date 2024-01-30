extends CharacterBody2D

var speed = 300.0
var speedIncrement = 50
var direction = Vector2.RIGHT
var originalPos

func _ready():
	SignalManagerAutoload.point_collected.connect(SpeedUp)

func _enter_tree():
	originalPos = position

func _process(delta):
		get_input()

func _physics_process(delta):
	#var direction = Input.get_vector("left", "right", "up", "down")
	#if direction:
	velocity = speed * direction
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
		


func _on_area_2d_area_entered(area):
	if (area.is_in_group("Danger")):
		position = originalPos
		print ("GAME OVER!!!")
		
func SpeedUp():
	speed += speedIncrement
