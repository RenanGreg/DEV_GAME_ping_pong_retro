extends CharacterBody2D

const START_SPEED = 500 
const ACCEL = 50 

var speed 
var dir 

func New_ball(): 
	global_position = get_viewport_rect().size / 2 
	speed = START_SPEED 
	dir = Vector2(randf_range(-1 , 1)  ,  randf_range   (-0.4  ,  0.4))
	pass 
	
func _ready(): 
	New_ball()
	pass
	
	
func _physics_process(delta):
	
	var collision = move_and_collide(dir.normalized() * speed * delta)
	var collider 
	
	if collision: 
		
		collider = collision.get_collider() 
		
		
		
		if collider.is_in_group ('Pad'): 
			speed += ACCEL 
			dir = dir.bounce  (collision.get_normal()) 
			dir.y = randf_range(0.6 , -0.6)
			
		else: 
			dir = dir.bounce(collision.get_normal()) 

	pass   



func _on_area_2d_area_entered(area):
	
	if area.name == 'AreaLeft': 
		$'../Score'.Player2Score += 1 
		New_ball() 
		
	if area.name == 'AreaRight': 
		$'../Score'.Player1Score += 1 
		New_ball() 
	
	
	
	pass 
