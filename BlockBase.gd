extends Node2D

enum BlockTypes {UNSET,CORE,GENERATOR,WEAPON}

@export var hitpoints=0
@export var shieldpoints=0
var hardpoints = Vector4i.ZERO
var type = BlockTypes.UNSET

# Called when the node enters the scene tree for the first time.
func _ready():
	var err=false
	
	if(type==BlockTypes.UNSET):
		push_error("Block Type UNSET") # put error on error stack
		err=true
	if(hardpoints==Vector4i.ZERO):
		push_error("Block has no hardpoint")
		err=true
	if(hitpoints==0):
		push_error("Block has no base hp")
		err=true
		
	assert(!err) # interrupt execution on debug builds
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
