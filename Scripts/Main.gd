extends Node3D

var interface:XRInterface

func _ready():
	interface = XRServer.find_interface("OpenXR");
	
	# Use XR if we find XR
	if interface and interface.is_initialized():
		get_viewport().use_xr = true;
