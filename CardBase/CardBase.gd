extends MarginContainer
#extends MarginContainer

@onready var CardDatabase = preload("res://Cards/CardsDatabase.gd")
@onready var CardNum#= 0
@onready var CardInfo#=CardDatabase.DATA[CardNum]
@onready var CardImg#=str("res://Cards/",CardInfo[0])

@onready var inDeck=true
#drag and drop section
@onready var BeingDragged
@onready var missed=false
func _get_drag_data(at_position):
	BeingDragged=true
	print ("Being Dragged")
	inDeck=false
	return self
#func _can_drop_data(at_position, data):
	#$".".position=get_global_mouse_position()
	#return true
	#return false
#func _drop_data(at_position, data):
	#BeingDragged=false
func _process(delta):
	if Input.is_action_just_released("ui_right"):
		BeingDragged=false
	if BeingDragged:
		$".".position=get_global_mouse_position()
# Called when the node enters the scene tree for the first time.
func _ready():
	#_setup(1)
	var CardSize=size
	#$Card.texture=load(CardImg)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass
func _setup(num):
	CardNum=num
	CardInfo=CardDatabase.DATA[CardNum]
	CardImg=str("res://Cards/",CardInfo[0])
	#$Card.texture=load(CardImg)
func newTexture(text):
	$Card.texture=load(str(text))

	
