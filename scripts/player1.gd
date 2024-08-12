extends StaticBody2D 
class_name Player 

var speed = 30

var kUP = KEY_W 
var kDOWN = KEY_S 

var dir = Vector2()

func _ready():
	pass 



func _physics_process(delta): 
	
	Move()
	
	pass


func _on_volta_menu_pressed():
	
	get_tree().change_scene_to_file("res://scenes/menu.tscn") 
	
	pass 



func Move(): 
	
	dir = Vector2(0,0)
	
	if Input.is_key_pressed(kUP): 
		
		dir = Vector2.UP  
		
	if Input.is_key_pressed(kDOWN): 
		dir = Vector2.DOWN 
		
		
	global_position += dir * speed 
	
	pass
