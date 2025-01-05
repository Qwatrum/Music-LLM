extends Resource
class_name Data

@export var songs = []
@export var dict = {}

func change_songs(new_songs):
	songs = new_songs

func change_dict(new_dict):
	dict = new_dict
