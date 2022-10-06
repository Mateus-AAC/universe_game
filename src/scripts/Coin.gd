extends Area2D

func _on_Coin_body_entered(body):
	if body.name == "Player":
		GlobalVar.Moedas += 1
		queue_free()
