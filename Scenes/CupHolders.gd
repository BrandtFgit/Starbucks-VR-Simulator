extends XRToolsPickable
class_name CupHolders

@export var cupScene:PackedScene;

# Called when the node enters the scene tree for the first time.
func _ready():
	picked_up.connect(onGrabbedPressed);

func onGrabbedPressed(thing):
	var newCup:XRToolsPickable = cupScene.instantiate();
	newCup.position = thing.position;
	get_parent().add_child(newCup);
	newCup.pick_up();
	pass;
