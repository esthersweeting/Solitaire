extends Area2D
var count=0
var cardNums=[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,]
var cards=[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,]
func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == MOUSE_BUTTON_LEFT \
	and event.is_pressed():
		self.on_click()

func on_click():
	if count==cards.size():
		for i in range (cards.size()-1,-1,-1):
			if cards[i].inDeck:
				cards[i].position=Vector2(1000,0)
				cards[i].z_index=0
			else:
				cards.remove_at(i)
		count=0
	else:
		cards[count].position=Vector2(850,0)
		cards[count].z_index=count
		if count-1>-1 and cards[count-1].inDeck:
			cards[count-1].position=Vector2(800,0)
		if count-2>-1 and cards[count-2].inDeck:
			cards[count-2].position=Vector2(750,0)
		count=count+1
				
func makeCard():
	cards[count]=get_parent().drawCard(get_parent().count)
	cards[count].position=Vector2(1000,0)
	cardNums[count]=cards[count].CardNum
	#print(cards[count].CardNum)
	count=count+1

