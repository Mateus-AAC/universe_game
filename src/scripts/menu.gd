extends VBoxContainer

func _on_start_pressed():
	get_tree().change_scene("res://src/interfaces/menudeobjetivo.tscn");
	Music.music_start()
func _on_continuar_pressed():
	get_tree().change_scene("res://src/fases/fase - 1/fase - 1.tscn");
	
func _on_Reiniciar_pressed():
	get_tree().change_scene("res://src/interfaces/menudeobjetivo.tscn");
	Music.music_start()
func _on_voltarMenu_pressed():
	get_tree().change_scene("res://src/interfaces/MenuPrincipal.tscn");
	
func _on_quit_pressed():
	get_tree().quit();
