extends Node2D
@onready var main = get_node("/root/MainScreen")
@onready var player = preload("res://scenes/note_player.tscn")

var player_inste
var lb

func set_label(text):
	lb = str(text)
	$"Label".text = str(text)
	player_inste = player.instantiate()
	add_child(player_inste)

func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if main.start(lb):
			play(20000)

func play(speed):
	player_inste.play_note(lb, speed)
	#$"HighlighterWhite".show()
	$"Key".color = Color(0, 0.769, 0.678)

func play_stopped():
	#$"HighlighterWhite".hide()
	$"Key".color = Color(1, 1, 1)


func green():
	$"Greeny".show()
	
func back():
	$"Greeny".hide()
