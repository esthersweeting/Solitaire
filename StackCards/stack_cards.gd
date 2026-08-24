extends ColorRect
var val=1
var suit="hearts"
var droppedStack=[]
var pointer
var redNext
var ypos
var xpos
var dragDataNotTop=false
var idNum

#@export_enum("clubs","diamonds","hearts","spades") var suit=0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _get_drag_data(at_position):
	if droppedStack.size()>0:
		#var mouse= int(get_global_mouse_position().y)
		#if mouse>251 and mouse<279:
			#dragDataNotTop=true
		ypos=ypos-30
		var data=droppedStack.pop_back()
		data.BeingDragged=true
		redNext=!redNext
		if droppedStack.size()>0:
			pointer=droppedStack.size()-1
			droppedStack[pointer].newTexture(droppedStack[pointer].CardImg)
			val=droppedStack[pointer].CardInfo[2]-1
			redNext=!droppedStack[pointer].CardInfo[1]
			#print(droppedStack.size())
		#_get_drag_data(300)
		return data
	else:
		return null
		
		
	
	#if droppedStack.size()>0:
		#ypos=ypos-30
		#var data=droppedStack.pop_back()
		#data.BeingDragged=true
 		#redNext=!redNext
		#if droppedStack.size()>0:
			#pointer=droppedStack.size()-1
			#droppedStack[pointer].newTexture(droppedStack[pointer].CardImg)
			#val=droppedStack[pointer].CardInfo[2]-1
			#redNext=!droppedStack[pointer].CardInfo[1]
		#return data
	#else:
		#return null
func _can_drop_data(at_position,data):
	#print("hi")
	#print(data.CardInfo[1],redNext,data.CardInfo[2],val)
	if data is MarginContainer:
		if data.CardInfo[1]==redNext and data.CardInfo[2]==val:
			return true
		if data.CardInfo[2]==13 and droppedStack.size()==0:
			return true
	
	return false

func _drop_data(at_position,data):
	#data=_get_drag_data(at_position)
	print("Dropped!")
	data.BeingDragged=false
	data.z_index=data.CardInfo[2]
	#data.position=$".".position
	val=data.CardInfo[2]-1
	droppedStack.push_back(data)
	redNext=!redNext
	data.position=Vector2(xpos,ypos)
	ypos=ypos+30
	if data.CardInfo[2]==13:
		val=12
		redNext=!data.CardInfo[1]
	data.z_index=22-val
	
#hearts_9:
		#["hearts_9.png",true,9,"hearts"],
