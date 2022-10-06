extends Area2D

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://src/interfaces/MenuKill.tscn");
		GlobalVar.Moedas = 0;
		Music.music_stop()
	pass
