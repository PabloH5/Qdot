@tool
extends Node

@onready var primary_color_sprite:Sprite2D = $primary_color_sprite
@onready var secondary_color_sprite:Sprite2D = $secondary_color_sprite

@export var primary_color:=Color.WHITE : set =_set_primary_color
@export var secondary_color:Color = "#ffffff" : set =_set_secondary_color

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _set_primary_color(new_color):
	if primary_color_sprite:
		primary_color_sprite.modulate = new_color
	else:
		print("PAILA primary color")
		
func _set_secondary_color(new_color):
	if secondary_color_sprite:
		secondary_color_sprite.modulate = new_color
	else:
		print("PAILA secondary color")

