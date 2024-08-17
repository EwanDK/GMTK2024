extends "res://BlockBase.gd"

@export var genRate = 0.0 #unit/sec
@export var maxStorage = 0.0
var currStorage = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	type = BlockTypes.GENERATOR
	hardpoints = Vector4i.ONE
	super()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var add = genRate*delta
	if(currStorage+add<=maxStorage):
		currStorage+=add
	else: 
		currStorage=maxStorage
	pass
