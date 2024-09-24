extends Node2D



func _ready():
	pass



func _process(delta):
	pass


func _on_single_player_pressed():

	get_tree().change_scene_to_file("res://scenes/menu.tscn") 
	
pass 

func _on_multi_player_pressed():
	
	get_tree().change_scene_to_file("res://scenes/multi_player.tscn") 
	
	pass 
