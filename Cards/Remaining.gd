var REMAINING=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,
30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51]

enum CardDatabase {clubs_ace,clubs_2,clubs_3,clubs_4,clubs_5,clubs_6,clubs_7,
clubs_8,clubs_9,clubs_10,clubs_jack,clubs_queen,clubs_king,
diamonds_ace,diamonds_2,diamonds_3,diamonds_4,diamonds_5,diamonds_6,diamonds_7,
diamonds_8,diamonds_9,diamonds_10,diamonds_jack,diamonds_queen,diamonds_king,
hearts_ace,hearts_2,hearts_3,hearts_4,hearts_5,hearts_6,hearts_7,
hearts_8,hearts_9,hearts_10,hearts_jack,hearts_queen,hearts_king,spades_ace,spades_2,spades_3,spades_4,spades_5,spades_6,spades_7,
spades_8,spades_9,spades_10,spades_jack,spades_queen,spades_king,
}
var Data#: CardDatabase.DATA


var _is_mouse_over :=false

func defineData():
	var info
	match Data:
		CardDatabase.clubs_ace:info =["clubs_ace.png",false,1]
		CardDatabase.clubs_2: info = ["clubs_2.png",false,2]
		CardDatabase.clubs_3: info = ["clubs_3.png",false,3]
		CardDatabase.clubs_4: info = ["clubs_4.png",false,4]
		CardDatabase.clubs_5: info = ["clubs_5.png",false,5]
		CardDatabase.clubs_6: info = ["clubs_6.png",false,6]
		CardDatabase.clubs_7: info = ["clubs_7.png",false,7]
		CardDatabase.clubs_8: info = ["clubs_8.png",false,8]
		CardDatabase.clubs_9: info = ["clubs_9.png",false,9]
		CardDatabase.clubs_10: info = ["clubs_10.png",false,10]
		CardDatabase.clubs_jack: info = ["clubs_jack.png",false,11]
		CardDatabase.clubs_queen: info = ["clubs_queen.png",false,12]
		CardDatabase.clubs_king: info = ["clubs_king.png",false,13]
		CardDatabase.diamonds_ace: info = ["diamonds_ace.png",true,1]
		CardDatabase.diamonds_2: info = ["diamonds_2.png",true,2]
		CardDatabase.diamonds_3: info = ["diamonds_3.png",true,3]
		CardDatabase.diamonds_4: info = ["diamonds_4.png",true,4]
		CardDatabase.diamonds_5: info = ["diamonds_5.png",true,5]
		CardDatabase.diamonds_6: info = ["diamonds_6.png",true,6]
		CardDatabase.diamonds_7: info = ["diamonds_7.png",true,7]
		CardDatabase.diamonds_8: info = ["diamonds_8.png",true,8]
		CardDatabase.diamonds_9: info = ["diamonds_9.png",true,9]
		CardDatabase.diamonds_10: info = ["diamonds_10.png",true,10]
		CardDatabase.diamonds_jack: info = ["diamonds_jack.png",true,11]
		CardDatabase.diamonds_queen: info = ["diamonds_queen.png",true,12]
		CardDatabase.diamonds_king: info = ["diamonds_king.png",true,13]
		CardDatabase.hearts_ace: info = ["hearts_ace.png",true,1]
		CardDatabase.hearts_2: info = ["hearts_2.png",true,2]
		CardDatabase.hearts_3: info = ["hearts_3.png",true,3]
		CardDatabase.hearts_4: info = ["hearts_4.png",true,4]
		CardDatabase.hearts_5: info = ["hearts_5.png",true,5]
		CardDatabase.hearts_6: info = ["hearts_6.png",true,6]
		CardDatabase.hearts_7: info = ["hearts_7.png",true,7]
		CardDatabase.hearts_8: info = ["hearts_8.png",true,8]
		CardDatabase.hearts_9: info = ["hearts_9.png",true,9]
		CardDatabase.hearts_10: info = ["hearts_10.png",true,10]
		CardDatabase.hearts_jack: info = ["hearts_jack.png",true,11]
		CardDatabase.hearts_queen: info = ["hearts_queen.png",true,12]
		CardDatabase.hearts_king: info = ["hearts_king.png",true,13]
		CardDatabase.spades_ace: info = ["spades_ace.png",false,1]
		CardDatabase.spades_2:["spades_2.png",false,2]
		CardDatabase.spades_3: info = ["spades_3.png",false,3]
		CardDatabase.spades_4: info = ["spades_4.png",false,4]
		CardDatabase.spades_5: info = ["spades_5.png",false,5]
		CardDatabase.spades_6: info = ["spades_6.png",false,6]
		CardDatabase.spades_7: info = ["spades_7.png",false,7]
		CardDatabase.spades_8: info = ["spades_8.png",false,8]
		CardDatabase.spades_9: info = ["spades_9.png",false,9]
		CardDatabase.spades_10: info = ["spades_10.png",false,10]
		CardDatabase.spades_jack: info = ["spades_jack.png",false,11]
		CardDatabase.spades_queen: info = ["spades_queen.png",false,12]
		CardDatabase.spades_king: info = ["spades_king.png",false,13]
	return info
func _ready():
	#var img=str("res://Cards/",defineData()[0])
	print(defineData())
	#$Card.texture=load(img)


















#extends MarginContainer

#@onready var CardDatabase = preload("res://Cards/CardsDatabase.gd")
#@onready var Num = preload("res://Cards/Remaining.gd")
#@onready var CardNum= 0
#@onready var CardInfo=CardDatabase.DATA[CardNum]
#@onready var CardImg=str("res://Cards/",CardInfo[0])
# Called when the node enters the scene tree for the first time.
#func _ready():
	#print(CardDatabase.LEFT)
	#var CardSize=size
	#$Card.texture=load(CardImg)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass
#func _setup(num):
	#CardNum=num
	#CardInfo=CardDatabase.DATA[CardNum]
	#CardImg=str("res://Cards/",CardInfo[0])
	#$Card.texture=load(CardImg)
	# →
#extends MarginContainer

#@onready var CardDatabase = preload("res://Cards/CardsDatabase.gd")
#@onready var CardNum=0
#@onready var CardInfo=CardDatabase.DATA[CardNum]
#@onready var CardImg=str("res://Cards/",CardInfo[0])
# Called when the node enters the scene tree for the first time.
#func _ready():
	#print(CardInfo)
	#var CardSize=size
	#$Card.texture=load(CardImg)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass

const CardBase=preload("res://CardBase/card_base.tscn")
const Deck= preload("res://PlaySpace/deck.gd")
var usedCards=[]

# Called when the node enters the scene tree for the first time.
#func _ready():
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass

#func _input(event):
	#if Input.is_action_just_released("ui_left"):
		#var new_card=CardBase.instantiate()
		#new_card.position=get_global_mouse_position()
		#$Cards.add_child(new_card)
		
		signal pressed

enum SUITS 
{
	clubs,diamonds,hearts,spades,
}

var suit
var value

var _is_mouse_over:=false

func suit_name():
	var name
	match suit:
		SUITS.clubs: name="clubs"
		SUITS.diamonds: name="diamonds"
		SUITS.hearts: name="hearts"
		SUITS.spades:name="spades"
	return name
func value_name():
	var name
	match value:
		1:return "ace"
		11:return "jack"
		12:return "queen"
		13:return "king"
		_:return value
func _ready():
	var img=str("res://Cards/",suit_name(),"_",value_name(),".png")
	$Card.texture=load(img)
func _process(delta):
	if Input.is_action_just_pressed("click") \
	and _is_mouse_over:
		pressed.emit()
func _on_mouse_entered():
	_is_mouse_over=true

