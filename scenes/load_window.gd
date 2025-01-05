extends Panel

var elements = []
var clickable_song = preload("res://scenes/clickable_song.tscn")
var delete_wd = preload("res://scenes/delete_window.tscn")
var ghost_el = preload("res://scenes/ghost_elemet.tscn")


func create(el):
	elements = el
	for e in elements:
		var inste = clickable_song.instantiate()
		$"ScrollContainer/VBoxContainer".add_child(inste)
		inste.create(e)
	var inste = ghost_el.instantiate()
	$"ScrollContainer/VBoxContainer".add_child(inste)

func load_element(el):
	get_parent().load_e(el)
	queue_free()

func delete(el):
	var inste = delete_wd.instantiate()
	add_child(inste)
	inste.create(el)
	
func confirm_deletion(el):
	get_parent().deletion_confirmed(el)


func _on_back_pressed():
	queue_free()
