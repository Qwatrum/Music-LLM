extends Node2D
@onready var white_key = preload("res://scenes/white_key.tscn")
@onready var black_key = preload("res://scenes/black_key.tscn")

var piano_notes = ['A0', 'A0#', 'B0', 'C1', 'C1#', 'D1', 'D1#', 'E1', 'F1', 'F1#', 'G1', 'G1#','A1', 'A1#', 'B1', 'C2', 'C2#', 'D2', 'D2#', 'E2', 'F2', 'F2#', 'G2', 'G2#','A2', 'A2#', 'B2', 'C3', 'C3#', 'D3', 'D3#', 'E3', 'F3', 'F3#', 'G3', 'G3#','A3', 'A3#', 'B3', 'C4', 'C4#', 'D4', 'D4#', 'E4', 'F4', 'F4#', 'G4', 'G4#','A4', 'A4#', 'B4', 'C5', 'C5#', 'D5', 'D5#', 'E5', 'F5', 'F5#', 'G5', 'G5#','A5', 'A5#', 'B5', 'C6', 'C6#', 'D6', 'D6#', 'E6', 'F6', 'F6#', 'G6', 'G6#','A6', 'A6#', 'B6', 'C7', 'C7#', 'D7', 'D7#', 'E7', 'F7', 'F7#', 'G7', 'G7#','A7', 'A7#', 'B7', 'C8']
var black_labels = ['A#0', 'C#1', 'D#1', 'F#1', 'G#1','A#1', 'C#2', 'D#2', 'F#2', 'G#2','A#2', 'C#3', 'D#3', 'F#3', 'G#3','A#3', 'C#4', 'D#4', 'F#4', 'G#4','A#4', 'C#5', 'D#5', 'F#5', 'G#5','A#5', 'C#6', 'D#6', 'F#6', 'G#6','A#6', 'C#7', 'D#7', 'F#7', 'G#7','A#7']
var white_notes = ['A0', 'B0', 'C1', 'D1', 'E1', 'F1', 'G1','A1', 'B1', 'C2', 'D2', 'E2', 'F2', 'G2','A2', 'B2', 'C3', 'D3', 'E3', 'F3', 'G3','A3', 'B3', 'C4', 'D4', 'E4', 'F4', 'G4','A4', 'B4', 'C5', 'D5', 'E5', 'F5', 'G5','A5', 'B5', 'C6', 'D6', 'E6', 'F6', 'G6','A6', 'B6', 'C7', 'D7', 'E7', 'F7', 'G7','A7', 'B7', 'C8']

var keys = {}

func _ready():
	generate_piano()

func generate_piano():
	
	for j in range(2):
		var x=14
		var c = 5
		var w = 0
		var b = 0
		for i in range(52):
			if j == 1:
				var white_key_inste = white_key.instantiate()
				add_child(white_key_inste)
				white_key_inste.position.x=x
				white_key_inste.set_label(white_notes[w])
				keys[white_notes[w]] = white_key_inste
				w+=1
				c+=1
				x+=35
				continue
			
			if i != 51:
				if c in [0, 1, 3, 4]:
					var black_key_inste = black_key.instantiate()
					add_child(black_key_inste)
					black_key_inste.position.x=x
					black_key_inste.set_label(black_labels[b])
					keys[black_labels[b]] = black_key_inste
					b+=1
				elif c == 5:
					var black_key_inste = black_key.instantiate()
					add_child(black_key_inste)
					black_key_inste.position.x=x
					black_key_inste.set_label(black_labels[b])
					keys[black_labels[b]] = black_key_inste
					b+=1
					c=-2
			c+=1
			x+=35
			
func play(note, speed):
	keys[note].play(speed)

func green(note):
	keys[note].green()

func back(note):
	keys[note].back()
