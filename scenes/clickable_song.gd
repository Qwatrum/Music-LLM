extends Control
var id
var text
var el

func create(e):
	text = e[1]
	id = e[0]
	el = e
	$"Background".text = text
	



func _on_background_pressed():
	get_parent().get_parent().get_parent().load_element(el)


func _on_delete_pressed():
	get_parent().get_parent().get_parent().delete(el)
