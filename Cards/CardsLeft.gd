extends Node

var remaining : Array[int] = [0,1,2,3,4,5,6,7]
var count=remaining.size()-1

func getNum():
	var temp=remaining[0]
	remaining[0]=remaining[count]
	count=count-1
	
