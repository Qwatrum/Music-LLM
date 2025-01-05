extends Panel
var el

func create(i):
	el = i

func _on_delete_pressed():
	queue_free()
	get_parent().confirm_deletion(el)




func _on_cancel_pressed():
	queue_free()
