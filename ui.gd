extends Node2D

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	SignalManagerAutoload.point_collected.connect(update_score)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func update_score():
	score += 1
	$PointValue.text = str(score)
	
