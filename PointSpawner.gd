extends Node

@export var thingToSpawn : PackedScene
var bufferFromEdge = 80

func _ready():
	SignalManagerAutoload.point_collected.connect(SpawnThing)
	
	
func SpawnThing():
	var screenSize = get_viewport().get_visible_rect().size
	var instance = thingToSpawn.instantiate()
	var randomPos = Vector2(randf_range(bufferFromEdge, screenSize.x - bufferFromEdge), randf_range(bufferFromEdge,screenSize.y - bufferFromEdge))
	instance.position = randomPos
	add_child(instance)
