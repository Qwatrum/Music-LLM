extends Panel

var information

func create(inf):
	information = inf

func _on_save_pressed():
	if str($"Name".text).strip_edges() != "":
		
		get_parent().save_music([information[0], str($"Name".text).strip_edges(), information[1]])
		queue_free()
