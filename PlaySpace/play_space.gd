extends Node2D
const DropZone=preload("res://DropZone/drop_zone.tscn")
const CardBase=preload("res://CardBase/card_base.tscn")
const CardStack=preload("res://StackCards/stack_cards.tscn")
const YouWin=preload("res://YouWin/you_win.tscn")

var dropx=5
var drop_zones=[null,null,null,null]
var stacks=[null,null,null,null,null,null,null]
@onready var CardDatabase = preload("res://Cards/CardsDatabase.gd")
var remainingCards=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,
30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51]
@onready var count=remainingCards.size()-1
var suits=["clubs","diamonds","hearts","spades"]
# Called when the node enters the scene tree for the first time.
func _ready():
	remainingCards.shuffle()
	for i in 24:
		$DeckArea.makeCard()
	for i in 4:
		drop_zones[i]=drawDropzone(i)
		#dz.suit=suits[i]
	var xtemp=5
	for i in range (1,8):
		stacks[i-1]=drawCardStack(xtemp,i)
		xtemp=xtemp+160
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var won=true
	for i in 4:
		if drop_zones[i].val<14:
			won=false
	if won==true:
		var winner=YouWin.instantiate()
		$".".add_child(winner)
		

func _input(event):
	if Input.is_action_just_released("ui_left"):
		var new_card=drawCard(count)
		new_card.position=get_global_mouse_position()
		
func drawCard(num):
	var new_card=CardBase.instantiate()
	new_card.position=Vector2 (900,0)
	#print("Created")
	new_card.CardNum=remainingCards[count]
	new_card.CardInfo=CardDatabase.DATA[new_card.CardNum]
	new_card.CardImg=str("res://Cards/",new_card.CardInfo[0])
	new_card.newTexture(new_card.CardImg)
	count=count-1
	$Cards.add_child(new_card)
	return new_card

func drawDropzone(numbr):
	var new_zone=DropZone.instantiate()
	new_zone.position=Vector2(dropx,0)
	dropx=dropx+180
	new_zone.suit=suits[numbr]
	#print(new_zone.suit)
	$DropZones.add_child(new_zone)	
	return new_zone

func drawCardStack(num,num2):
	var new_stack=CardStack.instantiate()
	new_stack.position=Vector2(num,250)
	var ypos=250
	for i in num2:
		var card=drawCard(count)
		card.position=Vector2(num,ypos)
		ypos=ypos+30
		card.newTexture("res://Cards/red2.png")
		new_stack.droppedStack.push_back(card)
	new_stack.droppedStack[num2-1].newTexture(new_stack.droppedStack[num2-1].CardImg)
	new_stack.val=new_stack.droppedStack[num2-1].CardInfo[2]-1
	new_stack.redNext=!new_stack.droppedStack[num2-1].CardInfo[1]
	new_stack.ypos=ypos
	new_stack.xpos=num
	new_stack.idNum=num2
	$Stacks.add_child(new_stack)
	return new_stack
