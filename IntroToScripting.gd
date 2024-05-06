extends Node2D

var score : int = 75
var move_speed : float = 2.53
var game_over : bool = true
var ability : String = "slash"

var country_name : String = "Australia"
var population : int = 25000000
var highest_altitude : float = 2.228
var landlocked : bool = false


# Called when the node enters the scene tree for the first time.
func _ready():	
	print(_has_won(100))
	print(_has_won(99))
	print(_has_won(101))
	print(_add(10, 25))
	_welcome_message()
	_score_function()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _has_won(score) -> bool:
	return score >= 100

func _add(a : int, b : int):
	var sum = a + b
	return sum

func _welcome_message():
	print("The function was called")

func _score_function():
	if score > 80:
		print("A")
	elif score > 60:
		print("B")
	elif score > 30:
		print("C")
	else:
		print("D")	
		
	if game_over:
		print("Go to menu")
	else:
		print("Keep playing")
