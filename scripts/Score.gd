extends Node2D

var Player1Score = 0 
var Player2Score = 0 

func _ready(): 
	pass 
	
	
	
func _process(delta): 
	
	$Player1Score.text = str(Player1Score) 
	
	$Player2Score.text = str(Player2Score)
	
	
	pass 
