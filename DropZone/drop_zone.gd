extends ColorRect
var val=1
var suit
var droppedStack=[]
var pointer
#@export_enum("clubs","diamonds","hearts","spades") var suit=0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _get_drag_data(at_position):
	if droppedStack.size()>0:
		var data=droppedStack.pop_back()
		data.BeingDragged=true
		val=val-1
		#print(data.CardInfo[0])
		return data
	else:
		return null
func _can_drop_data(at_position,data):
	#print("hi")
	if data.CardInfo[3]==suit and data.CardInfo[2]==val:
		val=val+1
	if data.CardInfo[3]==suit and data.CardInfo[2]==val-1:
		#print("droppable")
		return true
	#print("Not Droppable")
	#print(data.CardInfo[2])
	#print(val)
	#print (data.CardInfo[2]==val)
	return false

func _drop_data(at_position,data):
	#data=_get_drag_data(at_position)
	print("Dropped!")
	data.BeingDragged=false
	data.z_index=data.CardInfo[2]
	data.position=$".".position
	droppedStack.push_back(data)
	
