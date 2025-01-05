extends Node2D
@onready var parent = get_parent()#

func play_note(note, speed):
	
	var player = $"AudioStreamPlayer"
	if str(note).contains("#"):
		note = label_to_note(note)
	var music_stream = load("res://notes/"+note+".wav")
	if music_stream:
		player.stream = music_stream
		#player.pitch_scale = speed
		$"AudioStreamPlayer".volume_db = 0
		$"AudioStreamPlayer".play()
		await get_tree().create_timer(float(speed)/float(1000)).timeout # TODO hier anpassen
		$"AudioStreamPlayer".volume_db = -10
		parent.play_stopped()
		await get_tree().create_timer(1.5).timeout
		$"AudioStreamPlayer".stop()
		

func _on_audio_stream_player_finished():
	parent.play_stopped()

func label_to_note(label):
	var black_notes = ['Bb0', 'Db1', 'Eb1', 'Gb1', 'Ab1','Bb1', 'Db2', 'Eb2', 'Gb2', 'Ab2','Bb2', 'Db3', 'Eb3', 'Gb3', 'Ab3','Bb3', 'Db4', 'Eb4', 'Gb4', 'Ab4','Bb4', 'Db5', 'Eb5', 'Gb5', 'Ab5','Bb5', 'Db6', 'Eb6', 'Gb6', 'Ab6','Bb6', 'Db7', 'Eb7', 'Gb7', 'Ab7','Bb7']
	var black_labels = ['A#0', 'C#1', 'D#1', 'F#1', 'G#1','A#1', 'C#2', 'D#2', 'F#2', 'G#2','A#2', 'C#3', 'D#3', 'F#3', 'G#3','A#3', 'C#4', 'D#4', 'F#4', 'G#4','A#4', 'C#5', 'D#5', 'F#5', 'G#5','A#5', 'C#6', 'D#6', 'F#6', 'G#6','A#6', 'C#7', 'D#7', 'F#7', 'G#7','A#7']
	return black_notes[black_labels.find(label)]
