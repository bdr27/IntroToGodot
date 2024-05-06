extends Sprite2D

var timer : float = 0.0
var time_left : float = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	var vec = Vector2(500, 200)
	global_position = vec
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_time_to_go(delta)
	
func _time_to_go(delta):
	if(time_left >= 0):
		time_left -= delta
		print("Time Left: " + str(time_left))

func _move_it(delta):	
	var x : int = 1
	var y : int = 1	
	timer += 1.0 * delta
	print(timer)
	var direction = Vector2(x,y)
	global_position += direction * 100 * delta
