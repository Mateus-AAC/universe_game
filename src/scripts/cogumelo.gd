extends Area2D

export var velocidade = 400
export var distancia = 180

onready var inicioX = position.x
onready var destinoX = position.x + distancia

func _process(delta):
	position.x = move(position.x, destinoX, velocidade * delta)
	
	if position.x == destinoX:
		if destinoX == inicioX:
			destinoX = position.x + distancia
		else:
			destinoX = inicioX

func move(atual, para, passo):
	var novo = atual
	
	if novo < para:
		novo += passo
		
		if novo > para:
			novo = para
		
	else:
		novo -= passo
		
		if novo < para:
			novo = para
			
	return novo


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://src/interfaces/MenuKill.tscn");
		GlobalVar.Moedas = 0;
		Music.music_stop()
